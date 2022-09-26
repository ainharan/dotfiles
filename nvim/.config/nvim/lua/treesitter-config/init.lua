require('nvim-treesitter.configs').setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = false,
    disable = {},
  },
  ensure_installed = {
    "comment",
    "css",
    "go",
    "lua",
    "html",
    "javascript",
    "json",
    "kotlin",
    "yaml",
  },
}

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }
parser_config.kotlin.filetype_to_parsername = { "kotlin" }
parser_config.go.filetype_to_parsername = { "go" }
