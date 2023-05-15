local opt = vim.opt
local g = vim.g

opt.guicursor = ""

opt.swapfile = false
opt.showmode = false

opt.clipboard = "unnamedplus"
opt.cursorline = false

-- Indenting
opt.expandtab = true
opt.shiftwidth = 2
opt.smartindent = true
opt.tabstop = 4
opt.softtabstop = 4

-- opt.fillchars = {eob = " "}
opt.ignorecase = true
opt.smartcase = true
opt.mouse = "a"

-- Numbers
opt.number = true
opt.relativenumber = true
opt.numberwidth = 2
opt.ruler = false

-- disable nvim intro
opt.shortmess:append "sI"

opt.signcolumn = "yes"
opt.splitbelow = true
opt.splitright = true
opt.termguicolors = true
opt.timeoutlen = 400
opt.undofile = true

-- interval for writing swap file to disk, also used by gitsigns
opt.updatetime = 250

-- go to previous/next line with h,l,left arrow and right arrow
-- when cursor reaches end/beginning of line
opt.whichwrap:append "<>[]hl"

g.python3_host_prog = '~/Apps/miniconda3/envs/torch/bin/python'

g.mapleader = " "
