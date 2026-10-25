local M = {}

M.palettes = {
   shibumi = {
      -- Base
      fg = "#d6cfc4",
      fg_light = "#e6e3de",

      none = "none",

      line_nr = "#545454",
      cursor_nr = "#b1afa8",
      punc_char = "#9d9a94",
      border = "#5f5f5f",

      blue = "#579dd4",
      red = "#e16464",
      green = "#72ba62",
      pink = "#d159b6",
      purple = "#9266da",
      aqua = "#00a596",
      orange = "#d19f66",
      grey = "#575757",

      -- Background
      bg0 = "#1e1e1e",
      bg1 = "#232323",
      bg2 = "#292929",
      bg3 = "#303030",
      bg4 = "#323232",
      bg5 = "#373737",
      bg6 = "#3c3c3c",
      bg7 = "#424242",

      -- Git diff
      diff_add = "#2d3a2a",
      diff_delete = "#3a292b",
      diff_change = "#1c3448",
      diff_text = "#355c7c",
   },

   shibumi_light = {
      -- Base
      fg = "#070707",
      fg_light = "#000000",

      none = "none",

      line_nr = "#8c8a88",
      cursor_nr = "#212121",
      punc_char = "#82817f",
      border = "#7f7f7f",

      blue = "#0f5289",
      red = "#9f0202",
      green = "#006c00",
      pink = "#910e79",
      purple = "#5d4a8a",
      aqua = "#017f75",
      orange = "#ae5f05",
      grey = "#707070",

      -- Background
      bg0 = "#f4f3f2",
      bg1 = "#ededea",
      bg2 = "#e1e1df",
      bg3 = "#d3d3d1",
      bg5 = "#d1d1cf",
      bg4 = "#c9c9c7",
      bg6 = "#bfbfbd",
      bg7 = "#b7b7b5",

      -- Git diff
      diff_add = "#c3e2c5",
      diff_delete = "#edc2c6",
      diff_change = "#cbd9ed",
      diff_text = "#9cb4d6",
   },
}

return M
