--!nonstrict

--[[
    The TableToString function converts a table to a string.

    TableToString({
        table: <table>, ? the table that will be converted to string
        newline: <bool>, ? enables or disables new lines
        tab: <bool> ? enables or disables identation
    }): <string>

    TableToString({table = {key='value'},newline = true,tab = true})

]]
local SpecialCharacters = {['\a'] = '\\a', ['\b'] = '\\b', ['\f'] = '\\f', ['\n'] = '\\n', ['\r'] = '\\r', ['\t'] = '\\t', ['\v'] = '\\v', ['\0'] = '\\0'}
local Keywords = { ['and'] = true, ['break'] = true, ['do'] = true, ['else'] = true, ['elseif'] = true, ['end'] = true, ['false'] = true, ['for'] = true, ['function'] = true, ['if'] = true, ['in'] = true, ['local'] = true, ['nil'] = true, ['not'] = true, ['or'] = true, ['repeat'] = true, ['return'] = true, ['then'] = true, ['true'] = true, ['until'] = true, ['while'] = true, ['continue'] = true}
local Functions = game:GetService('HttpService'):GetAsync('https://raw.githubusercontent.com/v1zoy/Roblox/main/SaveInstance/functions.lua')

function GetHierarchy(Object)
    local Hierarchy = {}
	local Parent = Object
	local ChainLength = 0
	while Parent do
		ChainLength = ChainLength + 1
		local ObjName = string.gsub(Parent.Name, '[%c%z]', SpecialCharacters)
		ObjName = Parent == game and 'game' or ObjName
		if Keywords[ObjName] or not string.match(ObjName, '^[_%a][_%w]*$') then
			ObjName = '["' .. ObjName .. '"]'
		elseif ChainLength > 1 then
			ObjName = '.' .. ObjName
		end
		table.insert(Hierarchy, 1, ObjName)
		Parent = Parent.Parent
	end
	return table.concat(Hierarchy)
end

local function SerializeType(Value, Class)
	if Class == 'string' then
		return string.format('"%s"', Value:gsub('[%c%z]',SpecialCharacters))
	elseif Class == 'EnumItem' then
		return tostring(Value)
	elseif Class == 'Instance' then
		return GetHierarchy(Value)
	elseif type(Value) ~= Class then
		return Class .. '.new(' .. tostring(Value) .. ')'
	elseif Class == 'function' then
		return Functions[Value] or '\'[Unknown ' .. (pcall(setfenv, Value, getfenv(Value)) and 'Lua' or 'C')  .. ' ' .. tostring(Value) .. ']\''
	elseif Class == 'userdata' then
		return 'newproxy(' .. tostring(not not getmetatable(Value)) .. ')'
	elseif Class == 'thread' then
		return '\'' .. tostring(Value) ..  ', status: ' .. coroutine.status(Value) .. '\''
	else
		return tostring(Value)
	end
end
local Tab,Newline
local function TableToString(TableData, IgnoredTables, DepthData, Path)
	local Table = TableData.table or TableData

	if TableData.newline then
		Tab = TableData.tab
		Newline = TableData.newline
	end

	IgnoredTables = IgnoredTables or {}

	Path = Path or 'ROOT'
	DepthData = DepthData or {0, Path}
	local Depth = DepthData[1] + 1
	DepthData[1] = Depth
	DepthData[2] = Path

	IgnoredTables[Table] = DepthData
	local Semicolon = (Newline == true and ';' or '')
	local TabStr = (Tab == true and "	" or '')
	local TrailingTab = string.rep(TabStr, Depth - 1)
	local Result = '{'

	local HasOrder = true
	local Index = 1

	local IsEmpty = true
	for Key, Value in pairs(Table) do
		if Key ~= "Children" then
			IsEmpty = false
			if Index ~= Key then
				HasOrder = false
			else
				Index = Index + 1
			end

			local KeyClass, ValueClass = typeof(Key), typeof(Value)
			local HasBrackets = false
			if KeyClass == 'string' then
				Key = string.gsub(Key, '[%c%z]', SpecialCharacters)
				if Keywords[Key] or not string.match(Key, '^[_%a][_%w]*$') then
					HasBrackets = true
					Key = string.format('["%s"]', Key)
				end
			elseif KeyClass == 'number' and HasOrder then
				Key = ''
			else
				HasBrackets = true
				Key = '[' .. (KeyClass == 'table' and string.gsub(TableToString(Key, IgnoredTables, {Depth, Path}), '^%s*(.-)%s*$', '%1') or SerializeType(Key, KeyClass)) .. ']'
			end

			Value = ( ValueClass == 'table' and TableToString(Value, IgnoredTables, {Depth, Path}, Path .. (HasBrackets and '' or '.') .. Key) or SerializeType(Value, ValueClass) )
			local Tab = string.rep(TabStr, Depth)
			local LineTab = ( Newline==true and '\n' or '') .. Tab
			Result = Result .. LineTab .. (Key ~= '' and Key .. ( Newline == true and ' = ' or '=') or '') .. Value .. ';'
			if (Newline == false) then 
				Result = Result
					:gsub('(%W)%s','%1')
					:gsub('%s(%W)','%1')
			end
		end
	end

	if Table.Children then
		local Key = "Children"
		local Value = Table.Children
		local KeyClass, ValueClass = typeof(Key), typeof(Value)
		Value = ( ValueClass == 'table' and TableToString(Value, IgnoredTables, {Depth, Path}, Path .. '.' .. Key) or SerializeType(Value, ValueClass) )
		local Tab = string.rep(TabStr, Depth)
		local LineTab = ( Newline==true and '\n' or '') .. Tab
		Result = Result .. LineTab .. Key .. ( Newline == true and ' = ' or '=') .. Value .. ';'
	end

	local result = IsEmpty and Result .. '}' or string.sub(Result,  1, -1) .. ( Newline == true and '\n' or "" ) .. TrailingTab .. '}'.. Semicolon

	return ( Newline==false and result
		or result
		:gsub('};}','}}')
		:gsub(';}','}')
		:gsub('};;','};')
	)
end
return TableToString(...)
