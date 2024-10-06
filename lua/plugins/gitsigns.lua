return {
  "lewis6991/gitsigns.nvim",
  lazy = true,
  opts = function()
    local conf = require "nvchad.configs.gitsigns"
    conf.current_line_blame = true
    conf.current_line_blame_opts = {
      virt_text_pos = "right_align", -- 'eol' | 'overlay' | 'right_align'
      delay = 0,
    }
    vim.cmd [[highlight GitSignsCurrentLineBlame guifg=blue]]
    return conf
  end,
}
