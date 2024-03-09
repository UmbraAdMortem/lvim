require("user.options")
require("user.keymappings")
require("user.snippets")
reload("user.plugins")

lvim.colorscheme = "gruvbox-baby"

local formatters = require("lvim.lsp.null-ls.formatters")
formatters.setup {
  {
    name = "prettier",
    filetypes = { "css", "typescript", "typescriptreact", "MarkDown" }
  }
}

lvim.builtin.treesitter.on_config_done = function()
  local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
  parser_config.ejs = {
    install_info = {
      url = "https://github.com/tree-sitter/tree-sitter-embedded-template",
      files = { "src/parser.c" },
      requires_generate_from_grammar = true,
    },
    filetype = "ejs",
  }
end

