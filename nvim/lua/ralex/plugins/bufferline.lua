return {
  "akinsho/bufferline.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  version = "*",
  offsets = { { filetype = "NvimTree", text = "", padding = 5 } },
  opts = {
    options = {
      mode = "tabs",
      indicator_icon = '▎',
      buffer_close_icon = '󱄊 ',
      modified_icon = ' ',
      close_icon = '',
      left_trunc_marker = '',
      right_trunc_marker = '',
      color_icons = true,
      show_buffer_icons = true,
      show_buffer_close_icons = true,
      show_close_icon = true,
      show_tab_indicators = true,
      persist_buffer_sort = true,
      always_show_bufferline = true,
    },
  },
}
