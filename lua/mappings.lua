require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
-- Ctr + s -> save file
vim.api.nvim_set_keymap("n", "<C-s>", ":w<CR><Esc>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<C-s>", "<Esc>:w<CR>a<Esc>", { noremap = true, silent = true })

-- Zen mode
-- vim.keymap.set('n', '<leader>zo', ':TwilightEnable<CR>', { desc = 'Zen mode ON' })
-- vim.keymap.set('n', '<leader>zf', ':TwilightDisable<CR>', { desc = 'Zen mode OFF' })

-- Window management
-- Vertical split
vim.api.nvim_set_keymap(
  "n",
  "<leader>swv",
  ":vsplit<CR>",
  { noremap = true, silent = true, desc = "Window: Vertical split" }
)
-- Horizontal split
vim.api.nvim_set_keymap(
  "n",
  "<leader>swh",
  ":split<CR>",
  { noremap = true, silent = true, desc = "Window: Horizontal split" }
)
-- Close window
vim.api.nvim_set_keymap(
  "n",
  "<leader>wc",
  ":close<CR>",
  { noremap = true, silent = true, desc = "Window: Vertical split" }
)

-- Indent
-- Colors are applied automatically based on user-defined highlight groups.
-- There is no default value.
vim.cmd.highlight "IndentLine guifg=#123456"
-- Current indent line highlight
vim.cmd.highlight "IndentLineCurrent guifg=#123456"

-- move lines like vscode
-- Move line down in normal mode
vim.keymap.set("n", "<A-j>", ":m .+1<CR>==", { noremap = true, silent = true, desc = "Move line down" })
-- Move line up in normal mode
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==", { noremap = true, silent = true, desc = "Move line up" })
-- Move selected lines down in visual mode without losing selection
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", { noremap = true, silent = true, desc = "Move line down" })
-- Move selected lines up in visual mode without losing selection
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", { noremap = true, silent = true, desc = "Move line up" })

-- Open a telescope window to show all the projects
vim.keymap.set(
  "n",
  "<leader>pm",
  ":Telescope neovim-project discover<CR>",
  { noremap = true, silent = true, desc = "Move line dow" }
)

-- Move to line beginning and end
vim.keymap.set({ "n", "v", "x" }, "gl", "$", { desc = "End of line" })
vim.keymap.set({ "n", "v", "x" }, "gh", "^", { desc = "Beginning of line" })

-- Disable autocomment when new line
vim.cmd "autocmd BufEnter * set formatoptions-=cro"
vim.cmd "autocmd BufEnter * setlocal formatoptions-=cro"

-- Buffer close
vim.keymap.set("n", "<leader>bc", function()
  require("nvchad.tabufline").close_buffer()
end, { noremap = true, silent = true, desc = "Tabs: Close buffer" })
