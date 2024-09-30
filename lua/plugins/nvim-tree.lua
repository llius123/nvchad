  return{
    "nvim-tree/nvim-tree.lua",
    opts = function()
      local conf = require "nvchad.configs.nvimtree"
      conf.view.side = 'right'

        return conf
    end,
  }
