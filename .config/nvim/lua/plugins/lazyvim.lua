return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    -- enabled = false,
    config = function()
      require("neo-tree").setup({
        filesystem = {
          window = {
            mappings = {
              ["o"] = "open",
            },
          },
        },
      })
    end,
  },

  { "navarasu/onedark.nvim" },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "onedark",
    },
  },
  { "folke/tokyonight.nvim", enabled = false },
  { "catppuccin/nvim", name = "catppuccin", enabled = false },
}
