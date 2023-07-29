local M = {}

M.get_python_path = function()
  local python_path = vim.fn.trim(vim.fn.systme("pyenv which python"))
  return python_path
end

return M
