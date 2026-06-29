-- ===== Theme Cycling Setup =====
return {
  "catppuccin/nvim",
  name = "catppuccin",
  lazy = false,
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      flavour = "latte",
      transparent_background = true,
      show_end_of_buffer = false,
      integrations = {
        telescope = true,
        treesitter = true,
        lualine = true,
      },
    })
    vim.cmd.colorscheme("catppuccin")
  end,
}
