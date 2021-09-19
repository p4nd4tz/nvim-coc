vim.cmd([[ autocmd FileType dashboard set showtabline=0 | autocmd WinLeave <buffer> set showtabline=0 ]])

-- vim.api.nvim_set_keymap('n', '<Leader>sl', ':<C-u>SessionLoad<cr>', { silent = true })
-- vim.api.nvim_set_keymap('n', '<Leader>ss', ':<C-u>SessionSave<cr>', { silent = true })

vim.g.dashboard_default_executive = 'telescope'

vim.g.dashboard_session_directory = '~/.cache/nvim/session'
-- vim.g.dashboard_custom_shortcut={
--  last_session       = 'SPC s l',
--  find_history       = 'SPC f o',
--  find_file          = 'SPC f f',
--  new_file           = 'SPC c n',
--  change_colorscheme = 'SPC f c',
--  find_word          = 'SPC f w',
--  book_marks         = 'SPC f b',
-- }


-- vim.g.dashboard_custom_shortcut_icon = {
--   last_session =  ' ',
--   find_history = 'ﭯ ',
--   new_file = ' ',
--   change_colorscheme = ' ',
--   find_word = ' ',
--   book_marks = ' ',
--

-- let g:dashboard_custom_shortcut_icon['last_session'] = ' '
-- let g:dashboard_custom_shortcut_icon['find_history'] = 'ﭯ '
-- let g:dashboard_custom_shortcut_icon['find_file'] = ' '
-- let g:dashboard_custom_shortcut_icon['new_file'] = ' '
-- let g:dashboard_custom_shortcut_icon['change_colorscheme'] = ' '
-- let g:dashboard_custom_shortcut_icon['find_word'] = ' '
-- let g:dashboard_custom_shortcut_icon['book_marks'] = ' '

vim.g.dashboard_custom_section={
  -- buffer_list=
  a = {
    description = { " find file           " },
    command = "Telescope find_files",
  },

  b = {
    description = { "ﭯ recent files        " },
    command = "Telescope oldfiles",
  },

  c = {
    description = { " colorscheme         " },
    command = "Telescope colorscheme",
  },

  d = {
    description = { " find word           " },
    command = "Telescope live_grep",
  },

  e = {
    description = { " create new_file     "},
    command = "DashboardNewFile",
  },

  f = {
    description = { " configuration       " },
    command = ":e $HOME/.config/nvim/init.lua",
  },
}

-- vim.g.dashboard_custom_header = {
--    '',
--    '   ⠀⠀⠀⠀⠀⠀⠀⠀⠀⡴⠞⠉⢉⣭⣿⣿⠿⣳⣤⠴⠖⠛⣛⣿⣿⡷⠖⣶⣤⡀⠀⠀⠀   ',
--    '    ⠀⠀⠀⠀⠀⠀⠀⣼⠁⢀⣶⢻⡟⠿⠋⣴⠿⢻⣧⡴⠟⠋⠿⠛⠠⠾⢛⣵⣿⠀⠀⠀⠀  ',
--    '    ⣼⣿⡿⢶⣄⠀⢀⡇⢀⡿⠁⠈⠀⠀⣀⣉⣀⠘⣿⠀⠀⣀⣀⠀⠀⠀⠛⡹⠋⠀⠀⠀⠀  ',
--    '    ⣭⣤⡈⢑⣼⣻⣿⣧⡌⠁⠀⢀⣴⠟⠋⠉⠉⠛⣿⣴⠟⠋⠙⠻⣦⡰⣞⠁⢀⣤⣦⣤⠀  ',
--    '    ⠀⠀⣰⢫⣾⠋⣽⠟⠑⠛⢠⡟⠁⠀⠀⠀⠀⠀⠈⢻⡄⠀⠀⠀⠘⣷⡈⠻⣍⠤⢤⣌⣀  ',
--    '    ⢀⡞⣡⡌⠁⠀⠀⠀⠀⢀⣿⠁⠀⠀⠀⠀⠀⠀⠀⠀⢿⡀⠀⠀⠀⠸⣇⠀⢾⣷⢤⣬⣉  ',
--    '    ⡞⣼⣿⣤⣄⠀⠀⠀⠀⢸⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡇⠀⠀⠀⠀⣿⠀⠸⣿⣇⠈⠻  ',
--    '    ⢰⣿⡿⢹⠃⠀⣠⠤⠶⣼⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡇⠀⠀⠀⠀⣿⠀⠀⣿⠛⡄⠀  ',
--    '    ⠈⠉⠁⠀⠀⠀⡟⡀⠀⠈⡗⠲⠶⠦⢤⣤⣤⣄⣀⣀⣸⣧⣤⣤⠤⠤⣿⣀⡀⠉⣼⡇⠀  ',
--    '    ⣿⣴⣴⡆⠀⠀⠻⣄⠀⠀⠡⠀⠀⠀⠈⠛⠋⠀⠀⠀⡈⠀⠻⠟⠀⢀⠋⠉⠙⢷⡿⡇⠀  ',
--    '    ⣻⡿⠏⠁⠀⠀⢠⡟⠀⠀⠀⠣⡀⠀⠀⠀⠀⠀⢀⣄⠀⠀⠀⠀⢀⠈⠀⢀⣀⡾⣴⠃⠀  ',
--    '    ⢿⠛⠀⠀⠀⠀⢸⠁⠀⠀⠀⠀⠈⠢⠄⣀⠠⠼⣁⠀⡱⠤⠤⠐⠁⠀⠀⣸⠋⢻⡟⠀⠀  ',
--    '    ⠈⢧⣀⣤⣶⡄⠘⣆⠀⠀⠀⠀⠀⠀⠀⢀⣤⠖⠛⠻⣄⠀⠀⠀⢀⣠⡾⠋⢀⡞⠀⠀⠀  ',
--    '    ⠀⠀⠻⣿⣿⡇⠀⠈⠓⢦⣤⣤⣤⡤⠞⠉⠀⠀⠀⠀⠈⠛⠒⠚⢩⡅⣠⡴⠋⠀⠀⠀⠀  ',
--    '    ⠀⠀⠀⠈⠻⢧⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⣻⠿⠋⠀⠀⠀⠀⠀⠀  ',
--    '    ⠀⠀⠀⠀⠀⠀⠉⠓⠶⣤⣄⣀⡀⠀⠀⠀⠀⠀⢀⣀⣠⡴⠖⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀  ',
--    '                                       ',
--    '',
-- }

vim.g.dashboard_custom_header = {
 '',
 '',
 '',
 '',
 '',
 ' ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗',
 ' ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║',
 ' ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║',
 ' ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║',
 ' ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║',
 ' ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝',
}


vim.g.dashboard_custom_footer = {
 "Made by Abhishek"
}
-- vim.cmd("autocmd User dashboardReady let &l:stl = ' This statusline rocks!'")

