require "nvchad.options"

-- add yours here!

vim.wo.relativenumber = true

-- Row and colum highlight
vim.o.cursorlineopt = "both"
vim.opt.cursorcolumn = true
-- Underline the cursor row (works on horizontal only)
vim.api.nvim_set_hl(0, "CursorLine", { underline = true })
-- Left and right "border" using vertical lines (simulating a column border)
vim.api.nvim_set_hl(0, "CursorColumn", { bg = "#cdd3e0" })
