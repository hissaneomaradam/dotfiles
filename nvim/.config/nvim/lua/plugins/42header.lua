return {
  {
    "42Paris/42header",
    lazy = false,
    init = function()
      vim.g.user42 = "ohissane"
      vim.g.mail42 = "ohissane@student.1337.ma"
    end,
    keys = {
      { "<F1>", "<cmd>Stdheader<cr>", desc = "42 header" },
    },
  },
}
