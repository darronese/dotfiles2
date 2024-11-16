return { 
  "rose-pine/neovim",
  name = "rose-pine",
  config = function()
    require("rose-pine").setup({
      dark_variant = "main",
      dim_inactive_windows = false,
      extend_background_behind_borders = true,

      enable = {
        terminal = true,
        migrations = true,
      },
      styles = {
        bold = true,
        italic = true,
        transparency = false,
      },
    })
    vim.cmd("colorscheme rose-pine")
  end,
}
