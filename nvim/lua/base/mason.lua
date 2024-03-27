local M = {
	"williamboman/mason-lspconfig.nvim",
	dependencies = {
		"williamboman/mason.nvim",
	},
}

function M.config()
	local servers = {
		"lua_ls",
		"cssls",
		"html",
		"tsserver",
		"pyright",
		"bashls",
		"jsonls",
		"gopls",
		"intelephense",
		"volar",
		"yamlls",
        "tailwindcss",
	}

	require("mason").setup({
		ui = {
			border = "rounded",
		},
	})

	require("mason-lspconfig").setup({
		ensure_installed = servers,
	})

	--require("mason-lspconfig").setup_handlers({
	--	function(server_name)
	--		local server_config = {}
	--		if server_name == "tsserver" then
	--			return
	--		end
	--		if server_name == "volar" then
	--			server_config.filetypes = { "vue", "typescript", "javascript" }
	--		end
	--		require("lspconfig")[server_name].setup(server_config)
	--	end,
	--})
end

return M
