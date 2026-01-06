return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",
  dependencies = {
    "windwp/nvim-ts-autotag",
  },
  config = function()
    require("nvim-ts-autotag").setup({
      opts = {
        enable_close = true,
        enable_rename = true,
        enable_close_on_slash = false,
      },
    })

    local configs = require("nvim-treesitter")

    configs.setup({
      ensure_installed = {
        "svelte",
        "javascript",
        "typescript",
        "html",
        "css",
        "lua",
      },
      sync_install = false,
      auto_install = true,
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
        disable = { "latex" },
      },
      indent = {
        enable = true,
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>",
          node_incremental = "<C-space>",
          scope_incremental = false,
          node_decremental = "<bs>",
        },
      },
    })

    -- Nach setup() hinzufügen:
    vim.api.nvim_create_autocmd("FileType", {
      pattern = "svelte",
      callback = function()
        vim.treesitter.start()
      end,
    })
  end,
}
