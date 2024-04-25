function getRequest(url)
	local success, error = pcall(function()
		return game:HttpGet(url);
	end)
	if not success then
		return game:GetService("HttpService"):GetAsync(url);
	end
end
function import(script_name)
	local rawscript = getRequest(`https://raw.githubusercontent.com/v1zoy/Roblox/main/SaveInstance/{script_name}.lua`)
	return loadstring(rawscript)
end

local table = ({...})[1]
local minify = ({...})[2]

return import('TableToString')({
	table   = table,
	newline = (minify == false and true or false),
	tab     = (minify == false and true or false),
})
