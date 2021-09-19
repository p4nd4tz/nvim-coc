require'nvim-treesitter.configs'.setup {
	ensure_installed = 'all',
	highlight = {
		enable = true,
    disable = { "c", "rust" },  -- list of language that will be disabled
	},
	playground = {
		enable = true,
		disable = {},
		updateline = 25,
		persist_queries = false
	},
	rainbow = {
		enable = false,
	}
}

