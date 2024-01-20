return {
	"CRAG666/code_runner.nvim",
	config = function()
		require("code_runner").setup({
			filetype = {
				java = {
					"cd $dir &&",
					"javac $fileName &&",
					"java $fileNameWithoutExt",
				},
				python = "python3 -u",
				typescript = "deno run",
				rust = {
					"cd $dir &&",
					"rustc $fileName &&",
					"$dir/$fileNameWithoutExt",
				},
			},
		})

		local keymap = vim.keymap

		keymap.set("n", "<leader>r", ":RunCode<CR>", { noremap = true, silent = false })
		keymap.set("n", "<leader>rf", ":RunFile<CR>", { noremap = true, silent = false })
		keymap.set("n", "<leader>rft", ":RunFile tab<CR>", { noremap = true, silent = false })
		keymap.set("n", "<leader>rp", ":RunProject<CR>", { noremap = true, silent = false })
		keymap.set("n", "<leader>rc", ":RunClose<CR>", { noremap = true, silent = false })
		keymap.set("n", "<leader>crf", ":CRFiletype<CR>", { noremap = true, silent = false })
		keymap.set("n", "<leader>crp", ":CRProjects<CR>", { noremap = true, silent = false })
	end,
}
