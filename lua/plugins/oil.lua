
return {
  {
    "stevearc/oil.nvim",

    -- VSCode NeovimではOilを使わない
    cond = not vim.g.vscode,

    -- コマンドまたはキーマップ使用時に読み込む
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

      -- git status表示用にsigncolumnを2列確保
      win_options = {
        signcolumn = "yes:2",
      },

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

      keymaps = {
        -- ウィンドウ移動キーとの競合を回避
        ["<C-h>"] = false,
        ["<C-l>"] = false,

        -- 垂直分割で開く
        ["<leader>sv"] = {
          "actions.select",
          opts = {
            vertical = true,
          },
          desc = "垂直分割で開く",
        },

        -- 水平分割で開く
        ["<leader>sh"] = {
          "actions.select",
          opts = {
            horizontal = true,
          },
          desc = "水平分割で開く",
        },
      },
    },

    keys = {
      {
        "<leader>e",
        "<cmd>Oil<cr>",
        desc = "Oilを開く",
      },
      {
        "-",
        "<cmd>Oil<cr>",
        desc = "親ディレクトリを開く",
      },
    },
  },
  {
    "refractalize/oil-git-status.nvim",
    dependencies = { "stevearc/oil.nvim" },
    cond = not vim.g.vscode,
    ft = "oil",
    config = function()
      require("oil-git-status").setup({
        show_ignored = true, -- Display files ignored by Git
        symbols = {
          -- 画像の指定に合わせる。C / U のみ Nerd Font、私用領域グリフ使用
          -- それ以外は Nerd Font に収録済みの Unicode で再現
          index = {
            ["A"] = "+", -- Added
            ["D"] = "◀", -- Deleted
            ["M"] = "•", -- Modified
            ["R"] = "→", -- Renamed
            ["C"] = "󰆏", -- Copied (Nerd Font md-content_copy)
            ["T"] = "⊡", -- Type changed
            ["U"] = "󰘭", -- Unmerged (Nerd Font md-source_merge)
            ["?"] = "?", -- Untracked
            ["!"] = "☒", -- Ignored
          },
          working_tree = {
            ["A"] = "+", -- Added
            ["D"] = "◀", -- Deleted
            ["M"] = "•", -- Modified
            ["R"] = "→", -- Renamed
            ["C"] = "󰆏", -- Copied (Nerd Font md-content_copy)
            ["T"] = "⊡", -- Type changed
            ["U"] = "󰘭", -- Unmerged (Nerd Font md-source_merge)
            ["?"] = "?", -- Untracked
            ["!"] = "☒", -- Ignored
          },
        },
      })
    end,
  },
}
