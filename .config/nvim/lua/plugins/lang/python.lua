return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, { "ninja", "python", "rst", "toml" })
      end
    end,
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        pyright = {
          settings = {
            python = {
              pythonPath = vim.fn.trim(vim.fn.system("pyenv which python")),
            },
          },
        },
      },
    },
  },
  {
    "nvim-neotest/neotest",
    optional = true,
    dependencies = {
      "nvim-neotest/neotest-python",
    },
    opts = {
      adapters = {
        ["neotest-python"] = {
          -- Here you can specify the settings for the adapter, i.e.
          -- runner = "pytest",
          -- python = ".venv/bin/python",
        },
      },
    },
  },
  {
    "mfussenegger/nvim-dap",
    optional = true,
    dependencies = {
      "mfussenegger/nvim-dap-python",
      -- stylua: ignore
      keys = {
        { "<leader>dPt", function() require('dap-python').test_method() end, desc = "Debug Method" },
        { "<leader>dPc", function() require('dap-python').test_class() end, desc = "Debug Class" },
      },
    },
  },
  {
    "linux-cultist/venv-selector.nvim",
    keys = {
      { "<leader>vs", "<cmd>:VenvSelect<cr>", desc = "venv select" },
      { "<leader>vc", "<cmd>:VenvSelectCached<cr>", desc = "venv select cached" },
    },
    config = function()
      local hook = function(_, path)
        require("dap-python").setup(path)
      end
      local venv_selector = require("venv-selector")
      venv_selector.setup({
        name = ".venv",
        changed_venv_hooks = { hook, venv_selector.hooks.pyright },
      })
    end,
  },
}
