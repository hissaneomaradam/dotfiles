-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- / = terminal at the bottom
vim.keymap.set("n", "/", "<cmd>belowright 10split | terminal<CR>", {
  desc = "Open bottom terminal",
})

-- | = terminal on the right
vim.keymap.set("n", "|", "<cmd>botright 80vsplit | terminal<CR>", {
  desc = "Open right terminal",
})
