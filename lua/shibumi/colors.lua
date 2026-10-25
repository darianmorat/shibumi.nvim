local M = {}

M.palettes = {
   shibumi = {
      -- Base
      fg = "#D6CFC4",
      fg_light = "#E6E3DE",

      none = "NONE",

      line_nr = "#545454",
      cursor_nr = "#B1AFA8",
      punc_char = "#9D9A94",
      border = "#5F5F5F",

      blue = "#579DD4",
      red = "#E16464",
      green = "#72BA62",
      pink = "#D159B6",
      purple = "#9266DA",
      aqua = "#00A596",
      orange = "#D19F66",
      grey = "#575757",

      -- Background
      bg0 = "#1E1E1E",
      bg1 = "#232323",
      bg2 = "#292929",
      bg3 = "#303030",
      bg4 = "#323232",
      bg5 = "#373737",
      bg6 = "#3C3C3C",
      bg7 = "#424242",

      -- Git diff
      diff_add = "#2D3A2A",
      diff_delete = "#3A292B",
      diff_change = "#1C3448",
      diff_text = "#355C7C",
   },

   shibumi_light = {
      -- Base
      fg = "#070707",
      fg_light = "#000000",

      none = "NONE",

      line_nr = "#8c8a88",
      cursor_nr = "#212121",
      punc_char = "#82817f",
      border = "#7F7F7F",

      blue = "#0F5289",
      red = "#9F0202",
      green = "#006C00",
      pink = "#910E79",
      purple = "#5D4A8A",
      aqua = "#017F75",
      orange = "#AE5F05",
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
