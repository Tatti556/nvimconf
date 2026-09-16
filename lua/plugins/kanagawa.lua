return {
  {
    "rebelot/kanagawa.nvim",

    -- 起動時に読み込む
    lazy = false,

    -- 他のプラグインより先に読み込む
    priority = 1000,

    opts = {
      -- wave / dragon / lotus
      theme = "wave",

      -- WezTermのAcrylic背景をそのまま表示する
      transparent = true,

      -- 行番号・サインカラムなどの背景も透明にする
      colors = {
        theme = {
          all = {
            ui = {
              bg_gutter = "none",
            },
          },
        },
      },

      -- フローティングウィンドウもWezTermの背景に合わせる
      overrides = function()
        return {
          NormalFloat = { bg = "none" },
          FloatBorder = { bg = "none" },
          FloatTitle = { bg = "none" },
        }
      end,

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
