return {
  {
    "akinsho/bufferline.nvim",
    version = "*",
    event = "VeryLazy",

    -- VSCode Neovim では tabline を読み込まない
    cond = function()
      return not vim.g.vscode
    end,

    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },

    opts = {
      highlights = {
        fill = { bg = "none" },
        background = { bg = "none" },
        buffer_visible = { bg = "none" },
        buffer_selected = { bg = "none" },
        close_button = { bg = "none" },
        close_button_visible = { bg = "none" },
        close_button_selected = { bg = "none" },
        separator = { bg = "none" },
        separator_visible = { bg = "none" },
        separator_selected = { bg = "none" },
        indicator_selected = { bg = "none" },
        offset_separator = { bg = "none" },
      },
      options = {
        mode = "buffers",
        separator_style = "thin",
        indicator = {
          icon = "▎",
          style = "icon",
        },
        buffer_close_icon = "×",
        show_buffer_close_icons = true,
        show_close_icon = false,
        always_show_bufferline = true,
        offsets = {
          {
            filetype = "neo-tree",
            text = "Neo-tree",
            text_align = "left",
            highlight = "Directory",
            separator = true,
          },
        },
      },
    },
  },
}
