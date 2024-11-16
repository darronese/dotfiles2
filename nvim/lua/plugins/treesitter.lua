return {
  "nvim-treesitter/nvim-treesitter",
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = { "c", "cmake", "cpp", "css", "html", "javascript", "json", "lua", "python", "rust", },
      sync_install = true,
      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true },
    })
  end,
}
