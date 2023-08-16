local M = {}

M.get_python_path = function()
  return vim.fn.trim(vim.fn.system("pyenv which python"))
end

return M
