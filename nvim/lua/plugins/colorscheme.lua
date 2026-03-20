-- ===== Theme Cycling Setup =====
return {
  {
    "rose-pine/neovim",
    name = "rose-pine",
    config = function()
      require("rose-pine").setup({
        variant = "moon", -- main, moon, or dawn
        transparent = true,
        styles = {
          bold = true,
          italic = true,
          transparency = true, -- second toggle, set both
        },
      })
      vim.cmd("colorscheme rose-pine")
    end,
  },
}
