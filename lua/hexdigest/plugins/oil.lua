return {
  "stevearc/oil.nvim",
  init = function()
    require("oil").setup({
      view_options = {
        show_hidden = true,
      },
      float = {
        win_options = {
          winblend = 0,
        },
      },
    })
  end,
  keys = {
    {
      "<leader>e",
      function()
        require("oil").open_float()
      end,
      desc = "open oil",
    },
  },
  -- Optional dependencies
  dependencies = { "nvim-tree/nvim-web-devicons" },
}
