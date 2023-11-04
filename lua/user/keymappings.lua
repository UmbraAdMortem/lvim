-- Quick Options - change options quickly
lvim.builtin.which_key.mappings["o"] = {
  name = "Quick Options",
  n = { "<cmd>setlocal relativenumber!<cr>", "Toggle relative line numbers" },
}

-- Quickly exit insert mode
lvim.keys.insert_mode["jk"] = "<ESC>"
lvim.keys.insert_mode["kj"] = "<ESC>"

-- Save current buffer
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.insert_mode["<C-s>"] = "<ESC>:w<cr>i"
lvim.keys.visual_mode["<C-s>"] = ":w<cr>"
lvim.keys.visual_block_mode["<C-s>"] = ":w<cr>"

-- Save all buffers
lvim.keys.normal_mode["<C-S>"] = ":wa<cr>"
lvim.keys.insert_mode["<C-S>"] = "<ESC>:wa<cr>i"
lvim.keys.visual_mode["<C-S>"] = ":wa<cr>"
lvim.keys.visual_block_mode["<C-S>"] = ":wa<cr>"
lvim.keys.term_mode["<C-S>"] = ":wa<cr>"
lvim.keys.command_mode["<C-S>"] = ":wa<cr>"
