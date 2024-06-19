return {
  "stevearc/conform.nvim",
  config = function()
    require('conform').setup({
      formatters_by_ft = {
        javascript = { "prettier" },
        javascriptreact = { "prettier" },
        typescript = { "prettier" },
        typescriptreact = { "prettier" },
        json = { "prettier" },
        html = { "prettier" },
        css = { "prettier" },
        scss = { "prettier" },
        markdown = { "prettier" },
      }
    })

    -- Autoformat on save
    vim.api.nvim_create_autocmd("BufWritePre", {
      pattern = { "*.js", "*.jsx", "*.ts", "*.tsx", "*.json", "*.html", "*.css", "*.scss", "*.md" },
      callback = function()
        require('conform').format({ async = true })
      end,
    })
  end,
}
