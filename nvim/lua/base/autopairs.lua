M = {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = true
    -- use opts = {} for passing setup options
    -- this is equalent to setup({}) function
}

M.config = function()
    require('nvim-autopairs').setup()
end

return M
