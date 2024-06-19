return {
  'stevearc/dressing.nvim',
  config = function()
    require('dressing').setup({
      input = {
        enabled = true,
        border = "rounded",
        relative = "editor",
      },
      select = {
        enabled = true,
        backend = { "telescope", "fzf", "builtin" },
        telescope = require('telescope.themes').get_dropdown(),
      },
    })
  end,
}
