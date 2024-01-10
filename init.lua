vim.o.runtimepath = vim.o.runtimepath .. ',' .. vim.fn.expand('~/.config/nvim/lua')

local basic = require('basic')
basic.setup()

require('keybindings')
require('lazy-config')
require('telescope')

