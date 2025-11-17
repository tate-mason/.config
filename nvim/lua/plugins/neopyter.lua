return {
  {
    "SUSTech-data/neopyter",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
      "AbaoFromCUG/websocket.nvim", -- needed for mode="direct"
    },
    ---@type neopyter.Option
    opts = {
      mode = "direct",
      remote_address = "127.0.0.1:9001",
      file_pattern = { "*.ju.*" },
      on_attach = function(bufnr)
        local function map(lhs, rhs, desc)
          vim.keymap.set("n", lhs, rhs, { buffer = bufnr, desc = desc })
        end
        map("<leader>jr", "<cmd>Neopyter execute notebook:run-cell<cr>", "Run cell")
        map("<leader>jR", "<cmd>Neopyter execute notebook:run-all<cr>", "Run all")
        map("<leader>js", "<cmd>Neopyter sync current<cr>", "Sync current buffer")
        map("<leader>jc", "<cmd>Neopyter connect 127.0.0.1:9001<cr>", "Connect")
        map("<leader>jd", "<cmd>Neopyter disconnect<cr>", "Disconnect")
        map("<leader>j?", "<cmd>Neopyter status<cr>", "Status")
      end,
    },
  },
}
