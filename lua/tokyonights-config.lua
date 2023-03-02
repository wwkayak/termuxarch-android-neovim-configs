require("tokyonight").setup(
  {

    style = "night",

    on_highlights = function(highlights, colors)
      highlights.WinSeparator = {
        fg = '#333344'
      }
    end,

  }
)
