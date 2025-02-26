local parsers = require("nvim-treesitter.parsers")
local installer = require("nvim-treesitter.install")

local M = {}

function M.init()
  parsers.get_parser_configs().angular = {
    install_info = {
      url = "https://github.com/shootex/tree-sitter-angular",
      files = { "src/parser.c" },
      branch = "main",
    },
    maintainers = { "@shootex" },
  }

  if not parsers.has_parser("angular") then
    installer.update("angular")
  end
end

return M
