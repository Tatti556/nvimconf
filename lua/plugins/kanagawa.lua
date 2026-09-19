return {
  {
    "rebelot/kanagawa.nvim",
    --enabled = false,

    -- 起動時に読み込む
    lazy = false,

    -- 他のプラグインより先に読み込む
    priority = 1000,

    opts = {
      -- wave / dragon / lotus
      theme = "wave",

      background = {
        dark = "wave",
        light = "lotus",
      },
    },

    config = function(_, opts)
      require("kanagawa").setup(opts)
      vim.cmd("colorscheme kanagawa")
    end,
  },
}


