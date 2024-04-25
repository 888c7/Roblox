local functions = {}

function functions.getRequest(url)
	local success, error = pcall(function()
		return game:HttpGet(url);
	end)
	if not success then
		return game:GetService("HttpService"):GetAsync(url);
	end
end
function functions.import(script_name)
	local rawscript = getRequest(`https://raw.githubusercontent.com/v1zoy/Roblox/main/SaveInstance/{script_name}.lua`)
	return loadstring(rawscript)
end

return functions
