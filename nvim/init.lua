vim.g.mapleader = " "

require("config.lazy")

-- change default register to sys clipboard register
-- TODO: move this somewhere else
vim.opt.clipboard = "unnamedplus"
