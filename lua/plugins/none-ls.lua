return {
  "nvimtools/none-ls.nvim",
  config = function()
    local nls = require("null-ls")
    local sources = {
      nls.builtins.formatting.black,
      nls.builtins.diagnostics.pylint,
    }

    nls.setup({
      sources = sources,
    })
  end,
}
