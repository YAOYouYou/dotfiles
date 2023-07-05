return {
  "skywind3000/asyncrun.vim",
  {
    "skywind3000/asynctasks.vim",
    config = function()
      vim.g.asyncrun_open = 8
      vim.g.asyncrun_rootmarks = { ".git", ".svn", ".root", ".project", ".hg" }
    end,
  },
}
