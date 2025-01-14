return {
  {
    "mfussenegger/nvim-dap",
    config = function()
      local dap, dapui = require("dap"), require("dapui")

      dap.listeners.before.attach.dapui_config = function()
        dapui.open()
      end

      dap.listeners.before.launch.dapui_config = function()
        dapui.open()
      end

      -- dap.listeners.before.event_terminated.dapui_config = function()
      --   dapui.close()
      -- end
      --
      -- dap.listeners.before.event_exited.dapui_config = function()
      --   dapui.close()
      -- end
    end
  },

  {
    "rcarriga/nvim-dap-ui",
    dependencies = {
      "mfussenegger/nvim-dap",
      "nvim-neotest/nvim-nio",
    },
    config = function(_, opts)
      require("dapui").setup(opts)
    end,
  },

  {
    "leoluz/nvim-dap-go",
    ft = "go",
    dependencies = {
      "mfussenegger/nvim-dap",
    },
    config = function(_, _)
      require('dap-go').setup({
        dap_configurations = {
          {
            type = "go",
            name = "Custom with dynamic args",
            request = "launch",
            program = "${workspaceFolder}/main.go",
            outputMode = "remote",
            args = require("dap-go").get_arguments,
            env = {
              GOPRIVATE = "bitbucket.org/asappay",
              ENVIRONMENT = "dev",
              SERVICE_NAME = "go-service",
              OTEL_EXPORTER_OTLP_ENDPOINT = "localhost:4317",
              AWSPROFILE = "asappay-dev",
              SOME_VAR = "value"
            }
          },
        },
      })

    end
  },
}
