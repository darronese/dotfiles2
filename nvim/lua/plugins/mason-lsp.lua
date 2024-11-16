return {
  "williamboman/mason-lspconfig.nvim",
  dependencies = { "williamboman/mason.nvim", "neovim/nvim-lspconfig" },
  config = function()
    require("mason-lspconfig").setup({
      ensure_installed = {
        "lua_ls",
        "clangd",
        "cssls",
        "eslint",
        "html",
        "pyright",
        "ts_ls",
        "tailwindcss",
        "rust_analyzer",
      },
      automatic_installation = true,
    })
  end,
}
