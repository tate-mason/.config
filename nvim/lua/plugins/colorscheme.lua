return {
  {
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent = true,
      styles = { sidebars = "transparent", floats = "transparent" },
    },
    config = function(_, opts)
      require("cyberdream").setup(opts)
      -- Force transparency highlights
      vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
      vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
      vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })
      vim.cmd.colorscheme("cyberdream")
    end,
  },
  { "LazyVim/LazyVim", opts = { colorscheme = "cyberdream" } },
}
