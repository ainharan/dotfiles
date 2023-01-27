require("telescope").setup({
	defaults = {
		file_ignore_patterns = { "node_modules" },
	},
    pickers = {
        live_grep = {
            additional_args = function(opts)
                return {"--hidden"}
            end
        },
--  need to move to home manager to fix tree-sitter issue with this method
--  https://www.reddit.com/r/neovim/comments/vyqcny/treesitter_uv_dlopen_libstdcso6_problem_on_wsl/
--        find_files = {
--            find_command = {
--                'fd',
--                '--type',
--                'f',
--                '--color=never',
--                '--hidden',
--                '--follow',
--                '-E',
--                '.git/*'
--            },
--        },
    },
})

-- https://github.com/nvim-telescope/telescope.nvim/issues/1923
function vim.getVisualSelection()
  vim.cmd('noau normal! "vy"')
  local text = vim.fn.getreg('v')
  vim.fn.setreg('v', {})

  text = string.gsub(text, "\n", "")
  if #text > 0 then
    return text
  else
    return ''
  end
end

local tb = require('telescope.builtin')
vim.keymap.set('v', '<Leader>fv', function()
	local visually_selected_text = vim.getVisualSelection()
	tb.live_grep({ default_text = visually_selected_text })
end)
