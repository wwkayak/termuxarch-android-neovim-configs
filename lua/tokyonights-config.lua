require("tokyonight").setup(
  {

    style = "night",

    on_highlights = function(highlights, colors)
      highlights.WinSeparator = {
        print(colors.border),
        bold = true,
        fg = '#333344'
      }
    end
  }
)
