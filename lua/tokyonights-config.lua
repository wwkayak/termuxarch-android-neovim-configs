require("tokyonight").setup(
  {
    style = "night",
    on_highlights = function(highlights, _)
      highlights.WinSeparator = {
        fg = '#333344'
      }
      highlights.Comment = {
        fg = "#445599"
      }
      highlights.DiagnosticVirtualTextError = {
        --bg = "#2d202a",
        fg = "#eb3b3b",
      }
      highlights.DiagnosticError = {
        --bg = "#2d202a",
        fg = "#eb3b3b",
      }
      highlights.DiagnosticVirtualTextHint = {
        --bg = "#1a2232",
        fg = "#f0ef58"
      }
      highlights.DiagnosticHint = {
        --bg = "#1a2232",
        fg = "#f0ef58"
      }
      highlights.DiagnosticVirtualTextInfo = {
        --bg = "#192b38",
        fg = "#0dd9f7"
      }
      highlights.DiagnosticInfo = {
        --bg = "#192b38",
        fg = "#0dd9f7"
      }
      highlights.DiagnosticVirtualTextWarn = {
        --bg = "#3e2a2d",
        fg = "#f09f68"
      }
      highlights.DiagnosticWarn = {
        --bg = "#3e2a2d",
        fg = "#f09f68"
      }
    end,
    on_color = function(color)
      TabLine = { bg = "#8888ff", fg = color.fg_gutter }
    end
  }
)
