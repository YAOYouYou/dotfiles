return {
  "skywind3000/asyncrun.vim",
  {
    "skywind3000/asynctasks.vim",
    keys = {
      { "<F5>", "<cmd>AsyncTask file-run<cr>", desc = "file run" },
    },
    config = function()
      vim.g.asyncrun_open = 8
      vim.g.asyncrun_rootmarks = { ".git", ".svn", ".root", ".project", ".hg" }
    end,
  },
}
