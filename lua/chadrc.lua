-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua
-- Please read that file to know all available options :( 

---@class ChadrcConfig
---@class M
local M = {}

M.base46 = {
	theme = "one_light",

	-- hl_override = {
	-- 	Comment = { italic = true },
	-- 	["@comment"] = { italic = true },
	-- },
}
M.mapping = {
disabled = {
  n = {
    ['<C-n>'] = '',
    ['<leader>e'] = '',
    ['<leader>x'] = ''
  }
}
  }


return M
