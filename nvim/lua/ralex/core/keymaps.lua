vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

-- window management
keymap.set("n", "<leader>vv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>ss", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

keymap.set("v", "<C-u>", ":m '>+1<cr>gv=gv", { noremap = true, silent = true, desc = "Move current line UP" })
keymap.set("v", "<C-j>", ":m '<-2<cr>gv=gv", { noremap = true, silent = true, desc = "Move current line DOWN" })

keymap.set("n", "<leader>w", "<cmd>w<cr>", { desc = "Save", silent = false })
keymap.set("n", "<leader>z", "<cmd>wqa<cr>", { desc = "Save all and exit", silent = false })
keymap.set("n", "<leader>q", "<cmd>q!<cr>", { desc = "Exit", silent = false })

-- Move to first symbol on the line
keymap.set("n", "A", "^")

-- Move to last symbol of the line
keymap.set("n", "D", "$")

-- show yank highlight
vim.api.nvim_create_autocmd("TextYankPost", {
	group = vim.api.nvim_create_augroup("highlight_yank", { clear = true }),
	pattern = "*",
	desc = "Highlight selection on yank",
	callback = function()
		vim.highlight.on_yank({ timeout = 600, visual = true })
	end,
})
