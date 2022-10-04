return {
    on_setup = function(server)
        server.setup({
            capabilities = require("lsp.common-config").capabilities,
            on_attach = function(client, bufnr)
                local lspComm = require("lsp.common-config")
                lspComm.keyAttach(bufnr)
                lspComm.shwLinDiaAtom(bufnr)
                -- lspComm.hlSymUdrCursor(client, bufnr)
            end,
            handlers = require("lsp.common-config").handlers,
        })
    end,
}