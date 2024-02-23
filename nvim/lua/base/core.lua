LAZY_PLUGIN_SPEC = {}

function activate_plugin_in_lazy(item)
  table.insert(LAZY_PLUGIN_SPEC, { import = item })
end
