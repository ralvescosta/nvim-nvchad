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
    config = function()
      require("dapui").setup()
    end,
  },

  {
    "leoluz/nvim-dap-go",
    dependencies = {
      "mfussenegger/nvim-dap",
    },
    config = function()
      require("nvim-dap-go").setup({
        {
          type = "go",
          name = "main.go with Arguments",
          request = "launch",
          program = "${workspaceFolder}/main.go",
          args = require("dap-go").get_arguments,
          env = {
            SOME_VAR = "value",
          },
        },
      })
    end
  },
}
