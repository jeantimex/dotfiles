vim.g.mapleader = " "

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- general keymaps

keymap.set("i", "jk", "<ESC>")

keymap.set("n", "<leader>nh", ":nohl<CR>")

keymap.set("n", "x", '"_x')

keymap.set("n", "<leader>+", "<C-a>")
keymap.set("n", "<leader>-", "<C-x>")

keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") -- go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") -- go to previous tab

-- plugin keymaps

-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance

keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags

-- move-lines
-- Normal-mode commands
keymap.set("n", "<A-j>", ":MoveLine(1)<CR>", opts)
keymap.set("n", "<A-k>", ":MoveLine(-1)<CR>", opts)
keymap.set("n", "<A-h>", ":MoveHChar(-1)<CR>", opts)
keymap.set("n", "<A-l>", ":MoveHChar(1)<CR>", opts)

-- Visual-mode commands
keymap.set("v", "<A-j>", ":MoveBlock(1)<CR>", opts)
keymap.set("v", "<A-k>", ":MoveBlock(-1)<CR>", opts)
keymap.set("v", "<A-h>", ":MoveHBlock(-1)<CR>", opts)
keymap.set("v", "<A-l>", ":MoveHBlock(1)<CR>", opts)

-- Tabs
-- Move to previous/next
keymap.set("n", "<A-,>", "<Cmd>BufferPrevious<CR>", opts)
keymap.set("n", "<A-.>", "<Cmd>BufferNext<CR>", opts)
-- Re-order to previous/next
keymap.set("n", "<A-<>", "<Cmd>BufferMovePrevious<CR>", opts)
keymap.set("n", "<A->>", "<Cmd>BufferMoveNext<CR>", opts)
-- Goto buffer in position...
keymap.set("n", "<A-1>", "<Cmd>BufferGoto 1<CR>", opts)
keymap.set("n", "<A-2>", "<Cmd>BufferGoto 2<CR>", opts)
keymap.set("n", "<A-3>", "<Cmd>BufferGoto 3<CR>", opts)
keymap.set("n", "<A-4>", "<Cmd>BufferGoto 4<CR>", opts)
keymap.set("n", "<A-5>", "<Cmd>BufferGoto 5<CR>", opts)
keymap.set("n", "<A-6>", "<Cmd>BufferGoto 6<CR>", opts)
keymap.set("n", "<A-7>", "<Cmd>BufferGoto 7<CR>", opts)
keymap.set("n", "<A-8>", "<Cmd>BufferGoto 8<CR>", opts)
keymap.set("n", "<A-9>", "<Cmd>BufferGoto 9<CR>", opts)
keymap.set("n", "<A-0>", "<Cmd>BufferLast<CR>", opts)
-- Pin/unpin buffer
keymap.set("n", "<A-p>", "<Cmd>BufferPin<CR>", opts)
-- Close buffer
keymap.set("n", "<A-c>", "<Cmd>BufferClose<CR>", opts)
-- Wipeout buffer
--                 :BufferWipeout
-- Close commands
--                 :BufferCloseAllButCurrent
--                 :BufferCloseAllButPinned
--                 :BufferCloseAllButCurrentOrPinned
--                 :BufferCloseBuffersLeft
--                 :BufferCloseBuffersRight
-- Magic buffer-picking mode
keymap.set("n", "<C-p>", "<Cmd>BufferPick<CR>", opts)
-- Sort automatically by...
keymap.set("n", "<Space>bb", "<Cmd>BufferOrderByBufferNumber<CR>", opts)
keymap.set("n", "<Space>bd", "<Cmd>BufferOrderByDirectory<CR>", opts)
keymap.set("n", "<Space>bw", "<Cmd>BufferOrderByWindowNumber<CR>", opts)
keymap.set("n", "<Space>bl", "<Cmd>BufferOrderByLanguage<CR>", opts)
