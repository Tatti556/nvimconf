return {
  "Bekaboo/dropbar.nvim",

  -- Neovim起動時にプラグインを読み込む
  lazy = false,

  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },

  keys = {
    {
      "<leader>;",
      function()
        require("dropbar.api").pick()
      end,
      desc = "パンくずリストにアクセス",
      mode = "n",
    },
  },
}
