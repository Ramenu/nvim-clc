
local clc = require('nvim-clc.clc')

local function setup()
	vim.api.nvim_create_user_command('Cc', clc.calc_expression, {
		desc = 'Calculate a expression',
		nargs = 1,
	})
end

-- Creates an object for the module. All of the module's
-- functions are associated with this object, which is
-- returned when the module is called with `require`.
local M = {}

-- Routes calls made to this module to functions in the
-- plugin's other modules.
M.setup = setup
M.clc = clc.calc_expression

return M
