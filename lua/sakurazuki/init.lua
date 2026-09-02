local M = {}

function M.setup(opts)
  require("sakurazuki.theme").setup(opts)
end

function M.load()
  require("sakurazuki.theme").load()
end

return M
