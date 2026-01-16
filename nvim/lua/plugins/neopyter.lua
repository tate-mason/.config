return {
  {
    "SUSTech-data/neopyter",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
      "AbaoFromCUG/websocket.nvim", -- needed for mode="direct"
    },
    opts = {
      mode = "direct",
      remote_address = "127.0.0.1:9001",
      file_pattern = { "*.ju.py", "*.ju.jl", "*.ju.r" },

      auto_attach = true,
      auto_connect = false,

      jupyter = {
        auto_activate_file = false,
      },
    },
  },
}
