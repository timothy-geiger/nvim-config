return {
	"ThePrimeagen/harpoon",
	lazy = false,
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
 
  config = function()
    -- set keymaps
    local keymap = vim.keymap -- for conciseness

    keymap.set("n", "<leader>a", "<cmd>lua require('harpoon.mark').add_file()<cr>", { desc = "Mark file with harpoon" })
    keymap.set("n", "<leader>k", "<cmd>lua require('harpoon.ui').nav_next()<cr>", { desc = "Go to next harpoon mark" })
    keymap.set("n", "<leader>j", "<cmd>lua require('harpoon.ui').nav_prev()<cr>", { desc = "Go to prev harpoon mark" })
    keymap.set("n", "<leader>h", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", { desc = "Show harpoon marks" })
  end
}
