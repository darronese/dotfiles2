return {
  --Theme
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      local kanagawa = require("kanagawa")
      
      kanagawa.setup({
        compile = false,
        undercurl = true,
        commentStyle = { italic = true },
        functionStyle = {},
        keywordStyle = { italic = true },
        statementStyle = { bold = true },
        typeStyle = {},
        transparent = false,
        dimInactive = false,
        terminalColors = true,
        colors = {
          palette = {},
          theme = {
            wave = {},
            lotus = {},
            dragon = {
              ui = {
                bg_gutter = "none" -- Include bg_gutter = "none" for dragon theme
              }
            },
            all = {}
          },
        },
        overrides = function(colors)
          return {}
        end,
        theme = "wave",
        background = {
          dark = "dragon",
          light = "lotus"
        },
      })

      vim.cmd("colorscheme kanagawa")
    end,
  },
}

