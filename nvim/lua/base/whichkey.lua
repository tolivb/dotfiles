local M = {
	"folke/which-key.nvim",
}

function M.config()
	local mappings = {
		  {"<leader>q", "<cmd>confirm q<CR>", desc="Quit" },
          {"<leader>h","<cmd>nohlsearch<CR>", desc="NOHL" },
		  --{"<leader>;", "<cmd>tabnew | terminal<CR>", desc="Term" },
	      {"<leader>v", "<cmd>vsplit<CR>", desc="Split" },
		  {"<leader>b", desc = "Buffers" },
		  {"<leader>d", desc = "Debug" },
		  {"<leader>f", desc = "Find" },
		  {"<leader>g", desc = "Git" },
		  {"<leader>l", desc = "LSP" },
		  {"<leader>p", desc = "Plugins" },
		  --t = { desc = "Test" },
		  --a = {
		 {"<leader>a", group = "Tab", desc = "Tab" },
         {"<leader>at", "<cmd>$tabnew<cr>", desc="New Empty Tab", group="Tab" },
		  --  N = { "<cmd>tabnew %<cr>", "New Tab" },
		  --  o = { "<cmd>tabonly<cr>", "Only" },
		  --  h = { "<cmd>-tabmove<cr>", "Move Left" },
		  --  l = { "<cmd>+tabmove<cr>", "Move Right" },
		  --},
         {"<leader>T", desc = "Treesitter" }
	}

	local which_key = require("which-key")
	which_key.setup({
		plugins = {
			marks = true,
			registers = true,
			spelling = {
				enabled = true,
				suggestions = 20,
			},
			presets = {
				operators = false,
				motions = false,
				text_objects = false,
				window = false,
				nav = false,
				z = false,
				g = false,
			},
		},
		--win = {
		--	border = "rounded",
		--	position = "bottom",
		--	padding = { 2, 2, 2, 2 },
		--},
		--ignore_missing = true,
		show_help = false,
		show_keys = true,
		disable = {
			buftypes = {},
			filetypes = { "TelescopePrompt" },
		},
	})


	which_key.add(mappings)
end

return M
