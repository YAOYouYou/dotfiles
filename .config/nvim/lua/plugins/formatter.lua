return {
  "nvimtools/none-ls.nvim",
  dependencies = { "mason.nvim" },
  opts = function()
    local nls = require("null-ls")
    return {
      root_dir = require("null-ls.utils").root_pattern(".null-ls-root", ".neoconf.json", "Makefile", ".git"),
      sources = {
        nls.builtins.formatting.stylua,
        nls.builtins.formatting.shfmt,
        -- nls.builtins.formatting.black,
        nls.builtins.diagnostics.flake8,
      },
    }
  end,
}
