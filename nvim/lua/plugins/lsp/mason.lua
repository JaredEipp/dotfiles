local msn_status, mason = pcall(require, "mason")
if not msn_status then
    print("mason failed to load")
    return
end

local msn_lsp_status, mason_lspconfig = pcall(require, "mason-lspconfig")
if not msn_lsp_status then
    print("mason-lspconfig failed to load")
    return
end

mason.setup()

mason_lspconfig.setup({
    ensure_installed = {
        "rust_analyzer",
        "bashls",
        "clangd",
        "jdtls",
        "lua_ls",
    },
})

local lsp_attach = function(client, bufnr)
    local opts = {buffer = bufnr, remap = false}
    --keybindings
    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
    vim.keymap.set("n", "<leader>H", function() vim.lsp.buf.hover() end, opts)
    vim.keymap.set("n", "<leader>h", function() vim.lsp.buf.code_action() end, opts)
end

local lspconfig = require("lspconfig")
require("mason-lspconfig").setup_handlers({
    function(server_name)
        lspconfig[server_name].setup({
            on_attach = lsp_attach,
        })
    end,
})
