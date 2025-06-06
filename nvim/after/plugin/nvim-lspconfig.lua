local function on_attach(client, buffer)
    local keymap_opts = { buffer = buffer }
    -- Code navigation and shortcuts
    vim.keymap.set("n", "<c-]>", vim.lsp.buf.definition, keymap_opts)
    vim.keymap.set("n", "K", vim.lsp.buf.hover, keymap_opts)
    vim.keymap.set("n", "ga", vim.lsp.buf.code_action, keymap_opts)
    vim.keymap.set("n", "gD", vim.lsp.buf.implementation, keymap_opts)
    vim.keymap.set("n", "<c-k>", vim.lsp.buf.signature_help, keymap_opts)
    vim.keymap.set("n", "1gD", vim.lsp.buf.type_definition, keymap_opts)
    vim.keymap.set("n", "gr", vim.lsp.buf.references, keymap_opts)
    vim.keymap.set("n", "g0", vim.lsp.buf.document_symbol, keymap_opts)
    vim.keymap.set("n", "gW", vim.lsp.buf.workspace_symbol, keymap_opts)
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, keymap_opts)

    -- Goto previous/next diagnostic warning/error
    vim.keymap.set("n", "g[", vim.diagnostic.goto_prev, keymap_opts)
    vim.keymap.set("n", "g]", vim.diagnostic.goto_next, keymap_opts)
end

local rt = require("rust-tools")

local function on_attach_rust(client, buffer)
    local keymap_opts = { buffer = buffer }
    -- Code navigation and shortcuts
    vim.keymap.set("n", "<c-]>", vim.lsp.buf.definition, keymap_opts)
    vim.keymap.set("n", "K", rt.hover_actions.hover_actions, keymap_opts)
    vim.keymap.set("n", "ga", rt.code_action_group.code_action_group, keymap_opts)
    vim.keymap.set("n", "gD", vim.lsp.buf.implementation, keymap_opts)
    vim.keymap.set("n", "<c-k>", vim.lsp.buf.signature_help, keymap_opts)
    vim.keymap.set("n", "1gD", vim.lsp.buf.type_definition, keymap_opts)
    vim.keymap.set("n", "gr", vim.lsp.buf.references, keymap_opts)
    vim.keymap.set("n", "g0", vim.lsp.buf.document_symbol, keymap_opts)
    vim.keymap.set("n", "gW", vim.lsp.buf.workspace_symbol, keymap_opts)
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, keymap_opts)

    -- Goto previous/next diagnostic warning/error
    vim.keymap.set("n", "g[", vim.diagnostic.goto_prev, keymap_opts)
    vim.keymap.set("n", "g]", vim.diagnostic.goto_next, keymap_opts)
end

local capabilities = require('cmp_nvim_lsp').default_capabilities()

local opts = {
    capabilities = capabilities,
    tools = {
        -- rust-tools options
        inlay_hints = {
            auto = true,
            only_current_line = true,
            show_parameter_hints = true,
        },
    },
    server = {
        standalone = true,
        on_attach = on_attach_rust,
    }, -- rust-analyzer options
}

rt.setup(opts)

require('lspconfig')['pyright'].setup {
    on_attach = on_attach,
    capabilities = capabilities,
    settings = {
        python = {
            analysis = {
                typeCheckingMode = "off"
            }
        }
    }
}

-- require('lspconfig')['clangd'].setup {
--     on_attach = on_attach,
--     capabilities = capabilities,
-- }

local capabilities_html = vim.lsp.protocol.make_client_capabilities()
capabilities_html.textDocument.completion.completionItem.snippetSupport = true

require('lspconfig').html.setup {
    capabilities = capabilities_html,
    on_attach = on_attach,
    init_options = {
        configurationSection = { "html", "css", "javascript" },
        embeddedLanguages = {
            css = true,
            javascript = true
        },
        provideFormatter = false
    }
}

require('lspconfig').cssls.setup {
    capabilities = capabilities_html,
    on_attach = on_attach,
}

require('lspconfig').ts_ls.setup {
    on_attach = on_attach,
}

 require('lspconfig').emmet_ls.setup {
     capabilities = capabilities_html,
     filetypes = { 'html', 'typescriptreact', 'javascriptreact', 'css', 'sass', 'scss', 'less' },
     init_options = {
         html = {
             options = {
                 -- For possible options, see: https://github.com/emmetio/emmet/blob/master/src/config.ts#L79-L267
                 ["bem.enabled"] = true,
             },
         },
     }
 }

