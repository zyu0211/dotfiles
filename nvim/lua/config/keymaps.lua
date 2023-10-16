-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- vim.g.mapleader = " "

local mappings = {
  { from = "jk",        to = "<Esc>",  mode = "i" },
  { from = "v",         to = "<Esc>",  mode = "v" },
  { from = "H",         to = "^" },
  { from = "L",         to = "$" },
  { from = "<leader>w", to = ":w!<cr>" },
  { from = "<leader>q", to = ":q!<cr>" },
}

local option = {
  noremap = true,
  silent = true
}

for _, mapping in ipairs(mappings) do
  vim.keymap.set(mapping.mode or "n", mapping.from, mapping.to, mapping.option or option)
end
