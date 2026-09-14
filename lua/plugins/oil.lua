return {
  {
    "stevearc/oil.nvim",

    -- VSCode NeovimではOilを使わない
    cond = not vim.g.vscode,

    -- Oilは必要時に読み込む
    lazy = true,
    event = "VeryLazy",
    cmd = { "Oil" },

    -- ファイルアイコン表示用
    dependencies = {
      {
        "nvim-mini/mini.icons",
        opts = {},
      },
    },

    opts = {
      -- ディレクトリを開いたとき、Oilを使う
      default_file_explorer = true,

      -- 表示する列
      columns = {
        "icon",
        "permissions",
        "size",
        "mtime",
      },

      -- 隠しファイルも表示する
      view_options = {
        show_hidden = true,
      },
    },

    -- Normalモードで - を押すと親ディレクトリへ移動
    keys = {
      {
        "<leader>e",
        "<CMD>Oil<CR>",
        desc = "Oilを開く",
      },
      {
        "-",
        "<CMD>Oil<CR>",
        desc = "親ディレクトリを開く",
      },
    },
  },
}
