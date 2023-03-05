require("tokyonight").setup(
  {

    style = "night",

    on_highlights = function(highlights, colors)
      highlights.WinSeparator = {
        fg = '#333344'
      }
    end,

    on_color = function(color)
      TabLine = { bg = "#8888ff", fg = color.fg_gutter }
    end

  }
)
