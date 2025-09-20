return {
  "rose-pine/neovim",
  name = "rose-pine",
  config = function()
    require("rose-pine").setup({
      variant = "dawn", -- Options: auto, main, moon, dawn
      dim_inactive_windows = false,
      styles = {
        bold = true,
        italic = true,
      },
    })
    vim.cmd("colorscheme rose-pine")
  end,
}
