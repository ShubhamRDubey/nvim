-- configure.lua

local M = {}

M.setup = function()
    -- Set line numbers
    vim.o.number = true

    -- Set relative line numbers
    vim.o.relativenumber = true

    -- Enable clipboard support using xclip
    vim.cmd[[set clipboard=unnamedplus]]

    -- Use spaces instead of tabs
    vim.o.expandtab = true

    -- Set the number of spaces for each tab character
    vim.o.tabstop = 4

    -- Set the number of spaces for each level of indentation
    vim.o.shiftwidth = 4

    -- Use auto-indentation
    vim.o.autoindent = true

    -- Enable line wrapping
    vim.o.wrap = true

    -- Show the mode (e.g., -- INSERT --) in the command line
    vim.o.showmode = true

    -- Enable cursorline (highlight the current line)
    vim.o.cursorline = true

    -- Set the file encoding to UTF-8
    vim.o.fileencoding = "utf-8"

    -- Enable line numbers in the leftmost column of the sign column
    vim.o.signcolumn = "yes"

    -- Enable syntax highlighting
    vim.o.syntax = "enable"

    -- Enable line break for long lines at characters in 'breakat'
    vim.o.linebreak = true

    -- Enable incremental search
    vim.o.incsearch = true

    -- Highlight search results as you type
    vim.o.hlsearch = true

    -- Show matching parentheses and other pairs
    vim.o.showmatch = true

    -- Enable persistent undo
    vim.o.undofile = true

    -- Set the directory where swap files will be stored
    -- vim.o.directory = "/path/to/swap/files"

    -- Enable smart case sensitivity in search
    vim.o.smartcase = true

    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1
end

return M

