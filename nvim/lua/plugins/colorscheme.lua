-- ===== Theme Cycling Setup =====
return {
  "catppuccin/nvim",
  name = "catppuccin",
  lazy = false,
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      flavour = "latte",
      integrations = {
        telescope = true,
        treesitter = true,
        lualine = true,
      },
    })
    vim.cmd.colorscheme("catppuccin")
  end,
}
