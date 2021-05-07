--Enable (broadcasting) snippet capability for completion
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

require'lspconfig'.html.setup {
    on_attach= require'completion'.on_attach;
    capabilities = capabilities;
    root_dir = require'lspconfig'.util.root_pattern("html",".")
}

--[[
  Default Values:
    cmd = { "html-languageserver", "--stdio" }
    filetypes = { "html" }
    init_options = {
      configurationSection = { "html", "css", "javascript" },
      embeddedLanguages = {
        css = true,
        javascript = true
      }
    }
    root_dir = function(fname)
          return root_pattern(fname) or vim.loop.os_homedir()
        end;
    settings = {}
]]
