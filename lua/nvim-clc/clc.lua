
local clc = {}

function clc.calc_expression(args)
	cmd = 'clc ' .. '\"' .. args['args'] .. '\"'
	local handle = io.popen(cmd)
	local result = handle:read("*a")
	handle:close()
	print(result)
end

return clc
