return {
  'akinsho/bufferline.nvim',
  tag = "v2.*",
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    require('bufferline').setup {
      options = {
        numbers = "buffer_id",
        diagnostics = "nvim_lsp",
      },
    }
  end,
}
