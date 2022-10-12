require("telescope").setup({
	defaults = {
		file_ignore_patterns = { "node_modules" },
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
