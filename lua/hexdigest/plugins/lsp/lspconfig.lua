return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    { "folke/neodev.nvim", opts = {} },
  },
  config = function()
    local nvim_lsp = require("lspconfig")
    local mason_lspconfig = require("mason-lspconfig")

    local protocol = require("vim.lsp.protocol")

    local on_attach = function(client, bufnr)
      -- format on save
      if client.server_capabilities.documentFormattingProvider then
        vim.api.nvim_create_autocmd("BufWritePre", {
          group = vim.api.nvim_create_augroup("Format", { clear = true }),
          buffer = bufnr,
          callback = function()
            vim.lsp.buf.format()
          end,
        })
      end
    end

    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    mason_lspconfig.setup_handlers({
      function(server)
        nvim_lsp[server].setup({
          capabilities = capabilities,
        })
      end,
      --[[ ["tsserver"] = function()
				nvim_lsp["tsserver"].setup({
					on_attach = on_attach,
					capabilities = capabilities,
				})
			end,
			]]
      --
      ["lua_ls"] = function()
        nvim_lsp["lua_ls"].setup({
          on_attach = on_attach,
          capabilities = capabilities,
        })
      end,
      ["pyright"] = function()
        nvim_lsp["pyright"].setup({
          on_attach = on_attach,
          capabilities = capabilities,
        })
      end,
      ["clangd"] = function()
        nvim_lsp["clangd"].setup({
          on_attach = on_attach,
          capabilities = capabilities,
        })
      end,
      ["intelephense"] = function()
        nvim_lsp["intelephense"].setup({
          on_attach = on_attach,
          capabilities = capabilities,
        })
      end,
      ["texlab"] = function()
        nvim_lsp["texlab"].setup({
          on_attach = on_attach,
          capabilities = capabilities,
        })
      end,
      ["jdtls"] = function()
        nvim_lsp["jdtls"].setup({
          on_attach = on_attach,
          capabilities = capabilities,
        })
      end,
      ["tailwindcss"] = function()
        nvim_lsp["tailwindcss"].setup({
          on_attach = on_attach,
          capabilities = capabilities,
        })
      end,
      ["svelte"] = function()
        nvim_lsp["svelte"].setup({
          on_attach = on_attach,
          capabilities = capabilities,
        })
      end,
      ["ts_ls"] = function()
        nvim_lsp["ts_ls"].setup({
          on_attach = on_attach,
          capabilities = capabilities,
        })
      end,
    })
  end,
}
