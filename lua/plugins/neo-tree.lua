return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",

    -- Oilとは別キーで必要時に起動する
    cmd = { "Neotree" },

    keys = {
      {
        "<leader>n",
        "<CMD>Neotree toggle<CR>",
        desc = "Neo-treeを開く/閉じる",
      },
    },

    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons",
    },

    opts = {
      filesystem = {
        -- Oilのdefault_file_explorerと競合させない
        hijack_netrw_behavior = "disabled",
      },

      window = {
        mappings = {
          -- splitで開く
          ["<leader>sv"] = "open_vsplit",
          ["<leader>sh"] = "open_split",
          
          -- 競合キーを無効化
          ["s"] = "none",
          ["S"] = "none",
        },
      },
    },
  },
}