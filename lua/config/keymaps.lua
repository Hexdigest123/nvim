vim.opt.scrolloff = 8
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "J", "mzJ`z")

vim.keymap.set("x", "<leader>p", '"_dP')
vim.keymap.set({ "n", "v" }, "<leader>y", '"+y')
vim.keymap.set({ "n", "v" }, "<leader>d", '"_d')

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("v", "<leader>t", "g<C-a>")

vim.api.nvim_set_keymap("n", "<leader>co", "<cmd>CompilerOpen<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>ct", "<cmd>CompilerToggleResults<cr>", { noremap = true, silent = true })

vim.keymap.set({ "i", "n", "v" }, "<C-C>", "<esc>", { desc = "Make Ctrl+C behave exactly like escape." })

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

vim.api.nvim_del_keymap("n", "<leader>gg")
vim.api.nvim_del_keymap("n", "<leader>gG")
vim.api.nvim_del_keymap("n", "<leader>gf")
vim.api.nvim_del_keymap("n", "<leader>gl")
vim.api.nvim_del_keymap("n", "<leader>gL")
