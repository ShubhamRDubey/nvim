vim.g.mapleader = " "

-- resizing the panes
vim.api.nvim_set_keymap('n', '<A-j>', ':resize -5<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-k>', ':resize +5<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-h>', ':vertical resize -5<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-l>', ':vertical resize +5<CR>', { noremap = true, silent = true })

-- changing the panes
vim.api.nvim_set_keymap('n', '<leader>j', '<C-W>j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>k', '<C-W>k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>l', '<C-W>l', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>h', '<C-W>h', { noremap = true, silent = true })

-- Save file with Ctrl-s
vim.api.nvim_set_keymap('n', '<C-s>', ':w<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader><leader>', ':w<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>s', ':wq<CR>', { noremap = true, silent = true })

-- Quit Neovim with Ctrl-q
vim.api.nvim_set_keymap('n', '<C-q>', ':q<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>q', ':q<CR>', { noremap = true, silent = true })

-- nvim-tree shortcuts
vim.api.nvim_set_keymap('n', '<leader>n', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

-- split window
vim.api.nvim_set_keymap('n', '<leader>v', ':vsp ', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>x', ':sp ', { noremap = true, silent = true })

-- Resize split windows
-- vim.api.nvim_set_keymap('n', '<c-up>', '<c-w>-', { noremap = true })
-- vim.api.nvim_set_keymap('n', '<c-down>', '<c-w>+', { noremap = true })
-- vim.api.nvim_set_keymap('n', '<c-left>', '<c-w><', { noremap = true })
-- vim.api.nvim_set_keymap('n', '<c-right>', '<c-w>>', { noremap = true })

-- move windows 
vim.api.nvim_set_keymap('n', '<A-y>', '<C-W>H', { noremap = true })
vim.api.nvim_set_keymap('n', '<A-u>', '<C-W>J', { noremap = true })
vim.api.nvim_set_keymap('n', '<A-i>', '<C-W>K', { noremap = true })
vim.api.nvim_set_keymap('n', '<A-o>', '<C-W>L', { noremap = true })

-- copy commands
vim.keymap.set("n", "<leader>Y", "\"+y")
vim.keymap.set("n", "<leader>y", "\"+Y")

-- Switch to visual mode and select text, then press <Leader>s to trigger the replace command
vim.api.nvim_set_keymap('x', '<leader>s', ':s/\\V' .. vim.fn.escape('<C-R>"', '/\\') .. '/' .. vim.fn.escape('<C-R>"', '/\\') .. '/gI<Left><Left>', { noremap = true })

-- Move selected lines up or down one line in visual mode
vim.api.nvim_set_keymap('x', 'J', [[:m '>+1<CR>gv=gv]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('x', 'K', [[:m '<-2<CR>gv=gv]], { noremap = true, silent = true })

vim.keymap.set("x", "<leader>d", "\"_dP")
vim.keymap.set("n", "<leader>s", ":%s/<C-r><C-w>/<C-r><C-w>/gI<Left><Left><Left>")

vim.api.nvim_set_keymap('n', '<leader>r', ':%s/', { noremap = true })

-- Define key mappings for buffer navigation
vim.api.nvim_set_keymap('n', '<Tab>', ':bnext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<S-Tab>', ':bprevious<CR>', { noremap = true, silent = true })

-- Buffer
vim.api.nvim_set_keymap('n', '<leader>ls', ':ls<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>bd', ':bd<CR>', { noremap = true })

-- Map Ctrl+V to Visual Block Mode
vim.api.nvim_set_keymap('n', '<C-v>', '<C-v>', { noremap = true })

-- Yank to 'a' register
vim.api.nvim_set_keymap('n', '<leader>ya', '"ayy', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>pa', '"ap', { noremap = true, silent = true })

-- Yank to 'b' register
vim.api.nvim_set_keymap('n', '<leader>yb', '"byy', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>pb', '"bp', { noremap = true, silent = true })

-- Delete without storing in a register
vim.api.nvim_set_keymap('n', 'dnd', '"_d', { noremap = true, silent = true })

