return {
  "tpope/vim-fugitive",
  config = function()
    vim.keymap.set("n", "<leader>GG", ":Git<CR>")
    vim.keymap.set("n", "<leader>GC", ":Git commit<CR>")
    vim.keymap.set("n", "<leader>GP", ":Git push<CR>")
    vim.keymap.set("n", "<leader>Gp", ":Git pull<CR>")
  end,
}
