return {
  "neovim/nvim-lspconfig",
  dependencies = { "williamboman/mason-lspconfig.nvim" },
  config = function()
    local lspconfig = require("lspconfig")

    -- List of servers and their specific settings
    local servers = {
      lua_ls = {
        Lua = {
          diagnostics = {
            globals = { "vim" },
          },
          workspace = {
            library = vim.api.nvim_get_runtime_file("", true),
          },
        },
      },
      clangd = {},
      cssls = {},
      eslint = {},
      html = {},
      pyright = {},
      ts_ls = {},
      tailwindcss = {},
      rust_analyzer = {},
    }

    for server, config in pairs(servers) do
      local opts = vim.tbl_deep_extend("force", {
        on_attach = function(client, bufnr)
          -- Keybindings and other on_attach configurations
          local opts = { noremap=true, silent=true }
          local buf_set_keymap = vim.api.nvim_buf_set_keymap
          buf_set_keymap(bufnr, "n", "gd", "<Cmd>lua vim.lsp.buf.definition()<CR>", opts)
          buf_set_keymap(bufnr, "n", "K", "<Cmd>lua vim.lsp.buf.hover()<CR>", opts)
          -- Add more keybindings as needed
        end,
        capabilities = vim.lsp.protocol.make_client_capabilities(),
      }, config)

      lspconfig[server].setup(opts)
    end
  end,
}
