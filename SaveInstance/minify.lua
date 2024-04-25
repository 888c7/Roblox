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
	json = function(source, root)
		return game:GetService("HttpService"):JSONEncode({script = source, name = game.placeId .. '-root-game.' .. root.Properties.Name})
	end
}
function import(script_name)
	local rawscript = request.get(`https://raw.githubusercontent.com/v1zoy/Roblox/main/SaveInstance/{script_name}.lua`)
	return loadstring(rawscript)
end

local table = ({...})[1]
local minify = ({...})[2]

local _script = import('TableToString')({
	table   = table,
	newline = (minify == false and true or false),
	tab     = (minify == false and true or false),
})

if minify then
	local data = server.json(_script, table)
	server.post(data)
end

print(_script)
return _script
