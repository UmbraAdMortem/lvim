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
