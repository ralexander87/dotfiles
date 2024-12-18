vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness


keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })
keymap.set("n", "<leader>d", "d$", { desc = "Delete to end of line" })

keymap.set("i", "<A-;>", "<Esc>miA;<Esc>`ii")
keymap.set("i", "<A-,>", "<Esc>miA,<Esc>`ii")

-- increment/decrement numbers
keymap.set("n", "+", "<C-a>", { desc = "Increment number" }) 
keymap.set("n", "-", "<C-x>", { desc = "Decrement number" }) 
keymap.set("v", "+", "<cmd>:m -2<CR>", { desc = "Move Line UP"})
keymap.set("v", "-", "<cmd>:m +1<CR>", { desc = "Move Line Down"})

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

-- TabBar
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-- Save and Quit

keymap.set("n", "<leader>w", "<cmd>:w<CR>", {desc = "Save"})
keymap.set("n", "<leader>q", "<cmd>:q<CR>", {desc = "Quit"})
