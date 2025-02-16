-- Load NvChad's default LSP config
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"
local nvlsp = require "nvchad.configs.lspconfig"

-- List of LSP servers
local servers = { "gopls", "terraformls", "lua_ls", "yamlls", "dockerls", "helm_ls", "html", "cssls" }

-- Define a function to enable formatting on save
local function lsp_format_on_save(client, bufnr)
  if client.supports_method "textDocument/formatting" then
    vim.api.nvim_create_autocmd("BufWritePre", {
      buffer = bufnr,
      callback = function()
        vim.lsp.buf.format { async = false }
      end,
    })
  end
end

-- Setup LSP servers with auto-format on save
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = function(client, bufnr)
      -- Attach default NvChad LSP settings
      nvlsp.on_attach(client, bufnr)

      -- Enable auto-format on save
      lsp_format_on_save(client, bufnr)
    end,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end
