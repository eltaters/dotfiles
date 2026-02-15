-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Remove arrow keys from navigation in normal mode
vim.keymap.set("n", "<Up>", "")
vim.keymap.set("n", "<Down>", "")
vim.keymap.set("n", "<Left>", "")
vim.keymap.set("n", "<Right>", "")

-- Remove arrow keys from navigation in insert mode
vim.keymap.set("i", "<Up>", "")
vim.keymap.set("i", "<Down>", "")
vim.keymap.set("i", "<Left>", "")
vim.keymap.set("i", "<Right>", "")

-- Add extra keymaps for escaping text
vim.keymap.set("i", "jk", "<Esc>", {noremap = false})
vim.keymap.set("i", "kj", "<Esc>", {noremap = false})

-- Disable the default escape key
vim.keymap.set("i", "<Esc>", "")

-- Move to window using the <ctrl> hjkl keys
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Go to Left Window", remap = true })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Go to Lower Window", remap = true })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Go to Upper Window", remap = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Go to Right Window", remap = true })
