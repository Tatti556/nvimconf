return {
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",

    -- VSCode Neovimではlualineを読み込まない
    cond = function()
      return not vim.g.vscode
    end,

    opts = {
      options = {
        theme = "auto",
        globalstatus = true,
      },
    },
  },
}
