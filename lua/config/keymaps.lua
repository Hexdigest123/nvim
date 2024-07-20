-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.opt.scrolloff = 8
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- move multiple lines up
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv") -- move multiple lines down
vim.keymap.set("n", "J", "mzJ`z") -- join lines without moving cursor around

vim.keymap.set("x", "<leader>p", '"_dP') -- overwrite without moving content into register
vim.keymap.set({ "n", "v" }, "<leader>y", '"+y') -- clip to system clipboard
vim.keymap.set({ "n", "v" }, "<leader>d", '"_d') -- delete content into void register

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]]) -- replace inline
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true }) -- chmod file executable

vim.keymap.set("v", "<leader>t", "g<C-a>") -- increment numbers selected in visual mode

-- Compiler Interaction

vim.api.nvim_set_keymap("n", "<leader>co", "<cmd>CompilerOpen<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>ct", "<cmd>CompilerToggleResults<cr>", { noremap = true, silent = true })

-- ESC = strg c
vim.keymap.set({ "i", "n", "v" }, "<C-C>", "<esc>", { desc = "Make Ctrl+C behave exactly like escape." })

-- Native Terminal

local function normal_mode(keymap, action)
  vim.keymap.set("n", keymap, action)
end

local function visual_mode(keymap, action)
  vim.keymap.set("v", keymap, action)
end

normal_mode("<leader>ts", function()
  vim.cmd("belowright 12split")
  vim.cmd("set winfixheight")
  vim.cmd("term")
  vim.cmd("startinsert")
end)

normal_mode("<leader>tu", function()
  vim.cmd("terminal")
  vim.cmd("startinsert")
end)

normal_mode("<leader>tt", function()
  vim.cmd("tabnew")
  vim.cmd("terminal")
  vim.cmd("startinsert")
end)

normal_mode("<leader>tv", function()
  vim.cmd("vsplit")
  vim.cmd("terminal")
  vim.cmd("startinsert")
end)
