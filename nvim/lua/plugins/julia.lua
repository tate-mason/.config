-- lua/plugins/julia.lua
return {
  -- Treesitter grammar for Julia
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      if not vim.tbl_contains(opts.ensure_installed, "julia") then
        table.insert(opts.ensure_installed, "julia")
      end
    end,
  },

  -- Julia LSP (julials) via lspconfig, using the @nvim-lspconfig env
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      opts.servers = opts.servers or {}
      opts.servers.julials = {
        cmd = {
          vim.fn.exepath("julia"),
          "--project=@nvim-lspconfig",
          "--startup-file=no",
          "--history-file=no",
          "-e",
          [[
            using Pkg;
            Pkg.activate("@nvim-lspconfig"); Pkg.instantiate();
            using LanguageServer, SymbolServer;
            server = LanguageServer.LanguageServerInstance(stdin, stdout, nothing, "", true);
            run(server);
          ]],
        },
        root_dir = require("lspconfig.util").root_pattern("Project.toml", ".git", "."),
        filetypes = { "julia" },
      }
    end,
  },
}
