-- enable line number and relative line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- disable word wrapping
vim.opt.wrap = false

-- pane splitting
vim.opt.splitbelow = true
vim.opt.splitright = true

-- enable full terminal colors
vim.opt.termguicolors = true

-- tab settings
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

-- use system clipboard
vim.opt.clipboard = "unnamedplus"

-- always have cursor be centered
vim.opt.scrolloff = 999

-- block how ya want
vim.opt.virtualedit = "block"

-- ignore case
vim.opt.ignorecase = true

-- preserve undo history through multiple sessions
vim.opt.undofile = true

-- keep sign column (The gutter with change history) on by default
vim.opt.signcolumn = "yes"

-- enable nerd font
vim.g.have_nerd_font = true

-- ============================================== Keybinds ===========================================================

vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Change window focus
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })
