return {
  "nvimtools/none-ls.nvim",
  dependencies = { "nvimtools/none-ls-extras.nvim" },
  config = function()
    local nls = require("null-ls")
    local sources = {
      -- Python formatting and linting
      nls.builtins.formatting.black,
      nls.builtins.diagnostics.pylint,

      -- JS/TS formatting and linting
      nls.builtins.formatting.prettierd,
      require("none-ls.diagnostics.eslint_d"),
    }

    nls.setup({
      sources = sources,
    })
  end,
}
