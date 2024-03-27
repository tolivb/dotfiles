local M = {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
		-- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
	},
	event = "VeryLazy",
}

function M.config()
	vim.keymap.set("n", "<M-e>", "<cmd>Neotree toggle<CR>")
	require("neo-tree").setup({
		auto_close = true,
		update_focused_file = {
			enable = true,
		},
		view = {
			side = "left",
		},
		filesystem = {
			filtered_items = {
				visible = true,
				show_hidden_count = true,
				hide_dotfiles = false,
				hide_gitignored = true,
				hide_by_name = {
					'.git',
					'.DS_Store',
					'thumbs.db',
				},
				never_show = {'.git'},
			},
		},
	})
end

return M
