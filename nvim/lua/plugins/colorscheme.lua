-- ===== Theme Cycling Setup =====
return {
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      variant = "wave", -- "wave", "dragon", or "lotus"
      transparent = true, -- set true if you want terminal bg
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanagawa-wave",
    },
  },
}
