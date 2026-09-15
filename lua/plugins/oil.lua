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
      
      -- 競合キーを無効化, vertical splitとhorizontal splitの別割り当て
      keymaps = {
        ["<C-h>"] = false,
        ["<C-l>"] = false,

        ["<leader>sv"] = "actions.split",
        opts = { vertical = true, },
        desc = "垂直分割で開く",
        ["<leader>sh"] = "actions.horizontal_split",
        opts = { vertical = false, },
        desc = "水平分割で開く",
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
