require("mason").setup()
require("mason-lspconfig").setup {
    ensure_installed = { "lua_ls", "clangd", "pyre", "pylsp", "clangd","quick_lint_js","biome" },

}

local on_attach = function(_, _)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
    vim.keymap.set('n', 'KF', vim.lsp.buf.format, {})
end

local capabilities = require('cmp_nvim_lsp').default_capabilities()


require("lspconfig").lua_ls.setup {
    on_attach = on_attach,
}
require("lspconfig").quick_lint_js.setup {
    on_attach = on_attach,
}
require("lspconfig").biome.setup {
    on_attach = on_attach,
    capabilities = capabilities,
}


require("lspconfig").clangd.setup {
    on_attach = on_attach,
    capabilities = capabilities,
}
require("lspconfig").pyre.setup {
    on_attach = on_attach,
    capabilities = capabilities,
}
require("lspconfig").pylsp.setup {
    on_attach = on_attach,
    capabilities = capabilities,
}

require('lint').linters_by_ft = {
    markdown = { 'vale' },
    python = { 'pylint' },
    cpp = { 'cpplint' },
    js = {'quick_lint_js'},
    jsx = {'quick_lint_js'},
}

vim.api.nvim_create_autocmd({ "BufWritePost", "InsertLeave", "TextChanged" }, {
    callback = function()
        require("lint").try_lint()
    end
})
