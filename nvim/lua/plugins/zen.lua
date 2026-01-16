return {
  "folke/zen-mode.nvim",
  opts = {
    window = {
      width = 120,
      options = {
        number = false,
        relativenumber = false,
        cursorline = false,
        cursorcolumn = false,
        foldcolumn = "0",
        list = false,
      },
    },
    plugins = {
      twilight = { enabled = true },
      gitsigns = { enabled = false },
      tmux = { enabled = false },
    },
  },
}
