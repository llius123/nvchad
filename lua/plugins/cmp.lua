-- Assuming you are in your chadrc.lua or init.lua
vim.api.nvim_create_autocmd("BufWritePre", {
  callback = function()
    require("conform").format { lsp_fallback = true }
  end,
  desc = "Format file on save",
})
return {
  "hrsh7th/nvim-cmp",
  opts = function()
    local conf = require "nvchad.configs.cmp"
    local cmp = require "cmp"
    conf.mapping["<C-a>"] = cmp.mapping.complete()
    -- conf.mapping["<C-p>"] =
    -- conf.mapping["<C-n>"] =
    return conf
  end,
}
