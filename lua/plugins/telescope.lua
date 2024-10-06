return {
  "nvim-telescope/telescope.nvim",
  lazy = true,
  opts = function()
    local conf = require "nvchad.configs.telescope"
    local egrep_actions = require "telescope._extensions.egrepify.actions"
    local telescope = require "telescope"
    telescope.load_extension "egrepify"

    return conf
  end,
}
