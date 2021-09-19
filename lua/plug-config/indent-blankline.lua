-- local function get_char_highlights()
--     if Vapour.plugins.indent_blankline.enable_rainbow_colors then
--         vim.cmd [[highlight IndentBlanklineIndent1 guifg=#E06C75 blend=nocombine]]
--         vim.cmd [[highlight IndentBlanklineIndent2 guifg=#E5C07B blend=nocombine]]
--         vim.cmd [[highlight IndentBlanklineIndent3 guifg=#98C379 blend=nocombine]]
--         vim.cmd [[highlight IndentBlanklineIndent4 guifg=#56B6C2 blend=nocombine]]
--         vim.cmd [[highlight IndentBlanklineIndent5 guifg=#61AFEF blend=nocombine]]
--         vim.cmd [[highlight IndentBlanklineIndent6 guifg=#C678DD blend=nocombine]]
--         return {
--             "IndentBlanklineIndent1", "IndentBlanklineIndent2", "IndentBlanklineIndent3", "IndentBlanklineIndent4", "IndentBlanklineIndent5",
--             "IndentBlanklineIndent6"
--         }
--     else
--         return {}
--     end
-- end

vim.opt.listchars = {
  space = "⋅",
  eol = "↴",
}

-- vim.opt.termguicolors = true
-- vim.cmd [[highlight IndentBlanklineIndent1 guibg=#1f1f1f blend=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent2 guibg=#1a1a1a blend=nocombine]]

vim.g.indent_blankline_char_list = { '|', '¦', '┆', '┊'}
-- vim.g.indent_blankline_char_highlight_list = {'error', 'function'}
vim.g.indent_blankline_space_char_blankline_highlight_list = {'error', 'function'}
-- vim.g.indent_blankline_use_treesitter = true
-- vim.g.indent_blankline_show_first_indent_level = false

require("indent_blankline").setup {
  filetype_exclude = {"dashboard", "packer", "help"},
  buftype_exclude = {"terminal"},
  bufname_exclude = {"README.md", },
  show_end_of_line = true,
  space_char_blankline = " ",
  -- show_current_context = true,
  indent_level = 4,
  max_indent_level = 4,
  show_trailing_blankline_indent = false,
  -- char_highlight_list = {
  --     "indentblanklineindent1",
  --     "indentblanklineindent2",
  -- },
  -- space_char_highlight_list = {
  --     "indentblanklineindent1",
  --     "indentblanklineindent2",
  -- },
  -- show_trailing_blankline_indent = false,
  -- context_patterns = {
  --     "class", "return", "function", "method", "^if", "^while", "jsx_element", "^for", "^object", "^table", "block", "arguments", "if_statement",
  --     "else_clause", "jsx_element", "jsx_self_closing_element", "try_statement", "catch_clause", "import_statement", "operation_type"

  -- }
}
