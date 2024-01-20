return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"nvim-tree/nvim-web-devicons",
		"debugloop/telescope-undo.nvim",
	},
	config = function()
		local telescope = require("telescope")
		local actions = require("telescope.actions")

		require("telescope").load_extension("undo")

		telescope.setup({
			defaults = {
				path_display = { "truncate " },
				mappings = {
					i = {
						["<C-k>"] = actions.preview_scrolling_up,
						["<C-j>"] = actions.preview_scrolling_down,
						--["<C-h>"] = actions.preview_scrolling_left,
						--["<C-l>"] = actions.preview_scrolling_right,
					},
				},
			},
		})

		telescope.load_extension("fzf")

		-- set keymaps
		local keymap = vim.keymap -- for conciseness
		local builtin = require("telescope.builtin")

		keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Fuzzy find files in cwd" })
		keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Fuzzy find recent files" })
		keymap.set("n", "<leader>fs", builtin.buffers, { desc = "Find string in cwd" })
		keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Find string under cursor in cwd" })
		keymap.set("n", "<leader>u", "<cmd>Telescope undo<cr>")
	end,
}
