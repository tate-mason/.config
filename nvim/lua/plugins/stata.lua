return {
  "human-d3v/stata-nvim",
  branch = "packaging",
  ft = { "stata" },
  build = "git pull origin packaging && cd lsp-server && npm init -y && npm install && bun build ./server/src/server.ts --compile --outfile server_bin && cd ..",
  opts = {
    dev = false,
    stata_license_type = "stata-se",
  },
  config = function(_, opts)
    local stata = require("stata-nvim")
    stata.setup(opts)

    vim.filetype.add({
      extension = {
        ["do"] = "stata",
        ado = "stata",
      },
    })

    vim.api.nvim_create_autocmd("FileType", {
      pattern = "stata",
      callback = function(ev)
        vim.bo[ev.buf].expandtab = true
        vim.bo[ev.buf].shiftwidth = 2
        vim.bo[ev.buf].tabstop = 2
      end,
    })
  end,
}
