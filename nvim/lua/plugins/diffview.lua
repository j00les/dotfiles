-- Diffview configuration
-- Note: The Mercurial (hg) healthcheck warning is expected and harmless if you only use Git.
-- Diffview supports both Git and Mercurial, but the hg warning can be safely ignored.
require('diffview').setup({
	-- Use git (Mercurial warning in healthcheck is harmless)
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
