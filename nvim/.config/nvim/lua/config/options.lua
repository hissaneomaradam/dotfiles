-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- -- Auto-save files after idle time
vim.opt.autowriteall = true

vim.api.nvim_create_autocmd({ "InsertLeave", "TextChanged" }, {
  pattern = "*",
  callback = function()
    if vim.bo.modified and vim.bo.buftype == "" and vim.bo.modifiable and vim.api.nvim_buf_get_name(0) ~= "" then
      vim.cmd("silent update")
    end
  end,
})
