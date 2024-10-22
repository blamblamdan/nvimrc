return {
	'nvim-treesitter/nvim-treesitter',
	build = ":TSUpdate",
	--event =  { "BufReadPre", "BufNewFile" }, -- Only need TS inside buffers
	ft = {"lua", "rs", "sh", "bash", "tex", "bib", "json", "md", "zig", "zon",
		"yaml", "yml",},
	opts = {
		ensure_installed = {
			"vimdoc", "lua", "rust", "bash", "latex", "bibtex", "json",
			"markdown", "zig", "yaml",
		},
		sync_install = false,

		-- Set to false if `tree-sitter` CLI is not intsalled locally
		auto_install = true,
		highlight = { -- Consistent syntax highlighting
			enable = true,
			disable = {},-- List of disabled *parsers*
		},
		incremental_selection = { -- Parser grammar node selection
			enable = false,
			disable = {},
		},
		indent = { -- Indentation when = is pressed
			enable = true,
			disable = {},
		},

	},
	config = true,
}

