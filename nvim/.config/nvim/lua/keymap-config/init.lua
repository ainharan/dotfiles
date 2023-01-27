local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

vim.g.mapleader = " " -- leader key

-- nvim tree mappings
map("n", "<leader>t", ":NvimTreeToggle<CR>", opts)
map("n", "<leader>gt", ":NvimTreeFocus<CR>", opts)

-- telescope mappings
map("n", "<leader>ff", ":Telescope find_files hidden=true <cr>", opts)
map("n", "<leader>fg", ":Telescope live_grep<cr>", opts)
