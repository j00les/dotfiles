-- Diffview configuration
require('diffview').setup({
	-- Disable Mercurial support to prevent healthcheck warning
	-- By setting hg_cmd to false, diffview won't check for Mercurial
	hg_cmd = false,

	-- Use git only
	use_icons = true,
	enhanced_diff_hl = false,

	-- Standard configuration
	view = {
		default = {
			layout = "diff2_horizontal",
		},
		merge_tool = {
			layout = "diff3_horizontal",
			disable_diagnostics = true,
		},
	},
	file_panel = {
		listing_style = "tree",
		tree_options = {
			flatten_dirs = true,
			folder_statuses = "only_folded",
		},
	},
	key_bindings = {
		disable_defaults = false,
	},
})
