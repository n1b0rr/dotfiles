return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        'williamboman/mason-lspconfig.nvim',
        config = function()
            require("mason-lspconfig").setup({
            ensure_installed = {"lua_ls", "clangd", "jdtls", "jsonls", "html", "tsserver", "pyright", "ltex"} -- clangd = C, jdtls = Java
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({})
            lspconfig.clangd.setup({})
            lspconfig.jdtls.setup({
                root_dir = lspconfig.util.root_pattern('.git','src/');})
            lspconfig.jsonls.setup({})
            lspconfig.html.setup({})
            lspconfig.tsserver.setup({})
            lspconfig.pyright.setup({})
            lspconfig.pyright.setup({})


            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
            vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, {})
        end
    }
}
