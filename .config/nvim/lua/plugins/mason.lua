return {
  "williamboman/mason.nvim",
  opts = function(_, opts)
    if type(opts.ensure_installed) == "table" then
      vim.list_extend(opts.ensure_installed, { "flake8", "gopls" })
    end
  end,
}