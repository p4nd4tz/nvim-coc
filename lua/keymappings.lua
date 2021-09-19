vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', { noremap = true, silent = true })

vim.g.mapleader = ' '

-- no hl
vim.api.nvim_set_keymap('n', '<Leader>h', ':set hlsearch!<CR>', { noremap = true, silent = true })

-- explorer
vim.api.nvim_set_keymap('n', '<Leader>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

-- better window movement
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { silent = true })
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { silent = true })

-- Use alt + hjkl to resize windows
vim.api.nvim_set_keymap('n', '<M-j>', ':resize -2<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<M-k>', ':resize +2<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<M-h>', ':vertical resize -2<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<M-l>', ':vertical resize +2<CR>', { noremap = true, silent = true })

-- better indenting
vim.api.nvim_set_keymap('v', '<', '<gv', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '>', '>gv', { noremap = true, silent = true })

-- change escape
vim.api.nvim_set_keymap('i', 'ii', '<ESC>', { noremap = true, silent = true })

-- Tab switch bufer
vim.api.nvim_set_keymap('n', '<TAB>', ':bnext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<S-TAB>', ':bprevious<CR>', { noremap = true, silent = true })

-- move selected line of text
vim.api.nvim_set_keymap('x', 'K', ':move \'<-2<CR>gv-gv\'', { noremap = true, silent = true })
vim.api.nvim_set_keymap('x', 'J', ':move \'<+2<CR>gv-gv\'', { noremap = true, silent = true })

-- Commentary
vim.api.nvim_set_keymap('n', '<Leader>/', ':Commentary<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<Leader>/', ':Commentary<CR>', { noremap = true, silent = true })

-- HopWord && HopChar2
vim.api.nvim_set_keymap('n', 's', ":HopChar2<CR>", {silent = true})
vim.api.nvim_set_keymap('n', 'S', ":HopWord<CR>", {silent = true})
