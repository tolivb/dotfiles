require("base.core")
require("base.vimoptions")
require("base.keymaps")

-- base ide
activate_plugin_in_lazy("base.colorscheme")
activate_plugin_in_lazy("base.devicons")
activate_plugin_in_lazy("base.treesitter")
activate_plugin_in_lazy("base.mason")

activate_plugin_in_lazy("base.whichkey")
activate_plugin_in_lazy("base.lspconfig")
activate_plugin_in_lazy("base.cmp")
activate_plugin_in_lazy("base.none-ls")
activate_plugin_in_lazy("base.telescope")
activate_plugin_in_lazy("base.nvimtree")

-- extra
activate_plugin_in_lazy("base.schemastore")

-- execute
require("base.lazy")
