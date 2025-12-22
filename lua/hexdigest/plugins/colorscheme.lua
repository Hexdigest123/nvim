return {
  "catppuccin/nvim",
  lazy = false,
  opts = {
    transparent_background = false,
    color_overrides = {
      mocha = {
        base = "#1e1e2e",
      },
    },
  },
  priority = 1000,
  config = function(_, opts)
    require("catppuccin").setup(opts)
    vim.cmd("colorscheme catppuccin-mocha")
  end,
}
