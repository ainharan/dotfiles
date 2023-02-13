local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

vim.g.mapleader = " " -- leader key

-- nvim tree mappings
map("n", "<leader>t", ":NvimTreeToggle<CR>", opts)
map("n", "<leader>gt", ":NvimTreeFocus<CR>", opts)

-- telescope mappings
map("n", "<leader>ff", ":Telescope find_files hidden=true <cr>", opts)
map("n", "<leader>fg", ":Telescope live_grep<cr>", opts)

-- vim-terraform settings
-- ---------------------------------------------------------------------
vim.cmd([[silent! autocmd! filetypedetect BufRead,BufNewFile *.tf]])
vim.cmd([[autocmd BufRead,BufNewFile *.hcl set filetype=hcl]])
vim.cmd([[autocmd BufRead,BufNewFile .terraformrc,terraform.rc set filetype=hcl]])
vim.cmd([[autocmd BufRead,BufNewFile *.tf,*.tfvars set filetype=terraform]])
vim.cmd([[autocmd BufRead,BufNewFile *.tfstate,*.tfstate.backup set filetype=json]])
vim.cmd([[let g:terraform_fmt_on_save=1]])
vim.cmd([[let g:terraform_align=1]])
map("n", "<leader>ti", ":!terraform init<CR>", opts)
map("n", "<leader>tv", ":!terraform validate<CR>", opts)
map("n", "<leader>tp", ":!terraform plan<CR>", opts)
map("n", "<leader>taa", ":!terraform apply -auto-approve<CR>", opts)

