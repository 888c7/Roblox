local function deepCopy(original)
	local copy = {}
	for k, v in pairs(original) do
		copy[k] = type(v) == "table" and deepCopy(v) or v
	end
	return copy
end

local function removeProperties(obj, allowPropety)
	local nobj = deepCopy(obj)
	for key in pairs(nobj.Properties) do
		if not table.find(allowPropety, key) then
			nobj.Properties[key] = nil
		end
	end
	for i, child in ipairs(nobj.Children) do
		nobj.Children[i] = removeProperties(child, allowPropety)
	end
	return nobj
end

local function stringify(v, spaces, usesemicolon, depth)
	local valueType = type(v)
	local types = {
	}
	if valueType ~= 'table' then
		return valueType == 'string' and `"{v}";` or `{tostring(v)};`
	elseif not next(v) then
		return `\{};`
	end

	local depth = depth or 1
	local spaces = spaces or 4
	local space = (" "):rep((depth) * (spaces))
	local sep = usesemicolon and ";" or " "
	local concatenationBuilder = {"{"}
	for k, x in next, v do
		if k ~= 'Children' then
			if type(k) == 'number' then
				table.insert(concatenationBuilder, `\n{space}{stringify(x, spaces, usesemicolon, depth+1)}{sep}`)
			else
				table.insert(concatenationBuilder, `\n{space}{tostring(k)} = {stringify(x, spaces, usesemicolon, depth+1)}{sep}`)
			end
		end
	end
	if v.Children then
		table.insert(concatenationBuilder, `\n{space}Children = {stringify(v.Children, spaces, usesemicolon, depth+1)}{sep}`)
	end

	return `{table.concat(concatenationBuilder):sub(1,-2)}\n{space:sub(1, -spaces-1)}};`
end

local argsRoot = ({...})[1]
local argsProperties = ({...})[2] or {}

local root = argsRoot :: table
local allowProperty = {'Type', 'Name', 'Image', 'Text'} ; table.move(argsProperties, 1,#argsProperties, #allowProperty+1,allowProperty)
return stringify(removeProperties(root, allowProperty)
