return {
  "jay-babu/mason-nvim-dap.nvim",
  dependencies = "williamboman/mason.nvim",
  config = function()
    require("mason-nvim-dap").setup {
      automatic_installation = true,
      ensure_installed = { "python", "cpp", "javascript" },
    }
  end,
}
