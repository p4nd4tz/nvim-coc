-- nnoremap <leader>ff <cmd>Telescope find_files<cr>
-- nnoremap <leader>fg <cmd>Telescope live_grep<cr>
-- nnoremap <leader>fb <cmd>Telescope buffers<cr>
-- nnoremap <leader>fh <cmd>Telescope help_tags<cr>

vim.api.nvim_set_keymap('n', '<Leader>ff', ':Telescope find_files<cr>', { silent = true })
vim.api.nvim_set_keymap('n', '<Leader>fs', ':Telescope live_grep<cr>', { silent = true })
vim.api.nvim_set_keymap('n', '<Leader>fw', ':Telescope grep_string<cr>', { silent = true })
vim.api.nvim_set_keymap('n', '<Leader>fb', ':Telescope buffers<cr>', { silent = true })
vim.api.nvim_set_keymap('n', '<Leader>fh', ':Telescope help_tags<cr>', { silent = true })
vim.api.nvim_set_keymap('n', '<Leader>fc', ':Telescope colorscheme<cr>', { silent = true })
vim.api.nvim_set_keymap('n', '<Leader>fo', ':Telescope oldfiles<cr>', { silent = true })


require('telescope').setup({
  defaults = {
    layout_config = {
      vertical = { width = 0.5 }
      -- other layout configuration here
    },
    picker = {
      find_files = {
        theme = "dropdown",
      }
    }
    -- other defaults configuration here
  },
  -- other configuration values here
})

