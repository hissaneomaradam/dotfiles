return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = { c = {}, h = {} },
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        clangd = {
          on_attach = function(client)
            client.server_capabilities.documentFormattingProvider = false
          end,
        },
      },
    },
  },
}
