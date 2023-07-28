return {
  "lewis6991/gitsigns.nvim",
  keys = { { "<leader>ght", "<cmd>Gitsign toggle_current_line_blame<cr>", desc = "toggle current line blame" } },
  opts = {
    current_line_blame = false, -- Toggle with `:Gitsigns toggle_current_line_blame`
    current_line_blame_opts = {
      virt_text = true,
      delay = 100,
      ignore_whitespace = false,
    },
    yadm = {
      enable = true,
    },
  },
}
