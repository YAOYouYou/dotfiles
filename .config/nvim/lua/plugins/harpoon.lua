return {
  "ThePrimeagen/harpoon",
  -- vim.keymap.set("n", "<leader>ma", require("harpoon.mark").add_file, opts)
  keys = {
    { "<leader>ml", "<cmd>Telescope harpoon marks<cr>", desc = "list harpoon marks" },
    {
      "<leader>ma",
      function()
        require("harpoon.mark").add_file()
      end,
      desc = "harpoon mark",
    },
  },
  config = function()
    require("telescope").load_extension("harpoon")
  end,
}
