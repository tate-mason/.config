vim.api.nvim_create_autocmd({ "BufReadPost", "BufNewFile" }, {
  pattern = "*.ju.py",
  callback = function(ev)
    -- keep filetype=python so Neopyter stays on the working path
    vim.bo[ev.buf].filetype = "python"

    -- stop treesitter highlight so it can't override syntax rules
    pcall(vim.treesitter.stop, ev.buf)

    -- set Vim syntax (must be done via command)
    vim.api.nvim_buf_call(ev.buf, function()
      vim.cmd("setlocal syntax=julia")
    end)
  end,
})
