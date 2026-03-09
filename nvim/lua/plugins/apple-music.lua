return {
  "p5quared/apple-music.nvim",
  dependencies = { "nvim-telescope/telescope.nvim" },
  config = function()
    require("apple-music").setup()
  end,
  keys = {
    {
      "<leader>amp",
      function()
        require("apple-music").toggle_play()
      end,
      desc = "Apple Music Play/Pause",
    },
    {
      "<leader>fP",
      function()
        require("apple-music").select_playlist_telescope()
      end,
      desc = "Find Playlists",
    },
    {
      "<leader>fA",
      function()
        require("apple-music").select_album_telescope()
      end,
      desc = "Find Albums",
    },
    {
      "<leader>fS",
      function()
        require("apple-music").select_track_telescope()
      end,
      desc = "Find Songs",
    },
  },
}
