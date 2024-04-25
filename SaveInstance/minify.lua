local function __get(_) return game:GetService('HttpService'):GetAsync(_) end
local request = {get=(pcall(function()return game.HttpGet end) and game.HttpGet or __get)}

local server = {
	post = function(jsonData)
		if not game:GetService("RunService"):IsServer() then
			syn.request({
				Url = 'http://172.16.0.31:80', Method = "POST",
				Headers = {["Content-Type"] = "application/json"},
				Body = jsonData
			})
		else game:GetService("HttpService"):PostAsync('http://172.16.0.31:80', jsonData) end
	end,
	json = function(source, root, ...)
		local args,n_args = {...},{}
		for i = 1, #args do
			if args[i] ~= '' then table.insert(n_args, args[i]) end
		end
		return game:GetService("HttpService"):JSONEncode({script = source, name = game.placeId .. '-' .. table.concat(n_args, '-') .. '-root-game.' .. root.Properties.Name})
	end
}
function import(script_name)
	local rawscript = request.get(`https://raw.githubusercontent.com/v1zoy/Roblox/main/SaveInstance/{script_name}.lua`)
	return loadstring(rawscript)
end

local table = ({...})[1]
local minify = ({...})[2]
local filter = ({...})[3]

local _script = loadstring(workspace.TableToString.Value)({
	table   = table,
	newline = not minify,
	tab     = not minify,
	filter  = filter
})

if minify or filter[1] then
	local data = server.json(_script, table, (minify and'minify'or''), (filter[1]and'filter'or'') )
	server.post(data)
end

print(_script)
return _script
