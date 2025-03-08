return {
  {
    "mrcjkb/rustaceanvim",
    version = "^5",
    lazy = false,
    config = function()
      local mason_registry = require "mason-registry"
      local codelldb = mason_registry.get_package "codelldb"
      local extension_path = codelldb:get_install_path() .. "/extension/"
      local codelldb_path = extension_path .. "adapter/codelldb"
      local liblldb_path = extension_path .. "lldb/lib/liblldb.so"
      local cfg = require "rustaceanvim.config"

      vim.g.rustaceanvim = {
        dap = {
          adapter = cfg.get_codelldb_adapter(codelldb_path, liblldb_path),
        },
        tools = {
          float_win_config = {
            border = "rounded",
          },
        },
        -- Add server configuration to customize behavior
        server = {
          on_attach = function(client, bufnr)
            -- Load custom launch.json from .nvim/launch.json
            local dap = require("dap")
            local launch_file = vim.fn.getcwd() .. "/.nvim/launch.json"
            if vim.fn.filereadable(launch_file) == 1 then
              local content = table.concat(vim.fn.readfile(launch_file))
              local config = vim.fn.json_decode(content)
              if config and config.configurations then
                dap.configurations.rust = config.configurations
              end
            else
              print("No .nvim/launch.json found in " .. vim.fn.getcwd())
            end
          end,
        },
      }
    end,
  },
}
