-- AstroUI provides the basis for configuring the AstroNvim User Interface
-- Configuration documentation can be found with `:h astroui`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

---@type LazySpec
return {
  "AstroNvim/astroui",
  ---@type AstroUIOpts
  opts = {
    -- change colorscheme
    colorscheme = "astrodark",
    -- AstroUI allows you to easily modify highlight groups easily for any and all colorschemes
    highlights = {
      init = { -- this table overrides highlights in all themes
        Normal = { bg = "NONE", ctermbg = "NONE" },
        NormalNC = { bg = "NONE", ctermbg = "NONE" },
        NormalFloat = { bg = "NONE", ctermbg = "NONE" },
        FloatBorder = { bg = "NONE", ctermbg = "NONE" },
        Pmenu = { bg = "NONE", ctermbg = "NONE" },
        Terminal = { bg = "NONE", ctermbg = "NONE" },
        EndOfBuffer = { bg = "NONE", ctermbg = "NONE" },
        FoldColumn = { bg = "NONE", ctermbg = "NONE" },
        Folded = { bg = "NONE", ctermbg = "NONE" },
        SignColumn = { bg = "NONE", ctermbg = "NONE" },
        StatusLine = { bg = "NONE", ctermbg = "NONE" },
        StatusLineNC = { bg = "NONE", ctermbg = "NONE" },
        NonText = { bg = "NONE", ctermbg = "NONE" },
        LineNr = { bg = "NONE", ctermbg = "NONE" },
        CursorLineNr = { bg = "NONE", ctermbg = "NONE" },
        WinBar = { bg = "NONE", ctermbg = "NONE" },
        WinBarNC = { bg = "NONE", ctermbg = "NONE" },

        -- Neo-tree 透明设置
        NeoTreeNormal = { bg = "NONE", ctermbg = "NONE" },
        NeoTreeNormalNC = { bg = "NONE", ctermbg = "NONE" },
        NeoTreeVertSplit = { bg = "NONE", ctermbg = "NONE" },
        NeoTreeWinSeparator = { bg = "NONE", ctermbg = "NONE" },
        NeoTreeEndOfBuffer = { bg = "NONE", ctermbg = "NONE" },
        NeoTreeRootName = { bg = "NONE", ctermbg = "NONE" },
        NeoTreeGitAdded = { bg = "NONE", ctermbg = "NONE" },
        NeoTreeGitModified = { bg = "NONE", ctermbg = "NONE" },
        NeoTreeGitDeleted = { bg = "NONE", ctermbg = "NONE" },
        NeoTreeGitUntracked = { bg = "NONE", ctermbg = "NONE" },
        NeoTreeIndentMarker = { bg = "NONE", ctermbg = "NONE" },
        NeoTreeDotfile = { bg = "NONE", ctermbg = "NONE" },
        NeoTreeFileName = { bg = "NONE", ctermbg = "NONE" },
        NeoTreeCursorLine = { bg = "NONE", ctermbg = "NONE" },
        NeoTreeFloatBorder = { bg = "NONE", ctermbg = "NONE" },
        NeoTreeFloatTitle = { bg = "NONE", ctermbg = "NONE" },
        NeoTreeTitleBar = { bg = "NONE", ctermbg = "NONE" },

        -- Telescope 透明设置
        TelescopeNormal = { bg = "NONE", ctermbg = "NONE" },
        TelescopeBorder = { bg = "NONE", ctermbg = "NONE" },
        TelescopePromptNormal = { bg = "NONE", ctermbg = "NONE" },
        TelescopePromptBorder = { bg = "NONE", ctermbg = "NONE" },
        TelescopePromptTitle = { bg = "NONE", ctermbg = "NONE" },
        TelescopePreviewTitle = { bg = "NONE", ctermbg = "NONE" },
        TelescopeResultsTitle = { bg = "NONE", ctermbg = "NONE" },
        TelescopeSelection = { bg = "NONE", ctermbg = "NONE" },
        TelescopePreviewNormal = { bg = "NONE", ctermbg = "NONE" },
        TelescopeResultsNormal = { bg = "NONE", ctermbg = "NONE" },

        -- WhichKey 透明设置
        WhichKey = { bg = "NONE", ctermbg = "NONE" },
        WhichKeyGroup = { bg = "NONE", ctermbg = "NONE" },
        WhichKeyDesc = { bg = "NONE", ctermbg = "NONE" },
        WhichKeyFloat = { bg = "NONE", ctermbg = "NONE" },
        WhichKeySeparator = { bg = "NONE", ctermbg = "NONE" },
        WhichKeyBorder = { bg = "NONE", ctermbg = "NONE" },
        WhichKeyValue = { bg = "NONE", ctermbg = "NONE" },

        -- Notify 透明设置
        NotifyINFOBody = { bg = "NONE", ctermbg = "NONE" },
        NotifyINFOBorder = { bg = "NONE", ctermbg = "NONE" },
        NotifyINFOTitle = { bg = "NONE", ctermbg = "NONE" },
        NotifyINFOIcon = { bg = "NONE", ctermbg = "NONE" },
        NotifyWARNBody = { bg = "NONE", ctermbg = "NONE" },
        NotifyWARNBorder = { bg = "NONE", ctermbg = "NONE" },
        NotifyWARNTitle = { bg = "NONE", ctermbg = "NONE" },
        NotifyWARNIcon = { bg = "NONE", ctermbg = "NONE" },
        NotifyERRORBody = { bg = "NONE", ctermbg = "NONE" },
        NotifyERRORBorder = { bg = "NONE", ctermbg = "NONE" },
        NotifyERRORTitle = { bg = "NONE", ctermbg = "NONE" },
        NotifyERRORIcon = { bg = "NONE", ctermbg = "NONE" },

        -- 补充其他常见窗口透明设置
        VertSplit = { bg = "NONE", ctermbg = "NONE" },
        WinSeparator = { bg = "NONE", ctermbg = "NONE" },
        TabLine = { bg = "NONE", ctermbg = "NONE" },
        TabLineFill = { bg = "NONE", ctermbg = "NONE" },
        TabLineSel = { bg = "NONE", ctermbg = "NONE" },

        -- Tree-sitter 相关透明设置
        TSPunctDelimiter = { bg = "NONE", ctermbg = "NONE" },
        TSPunctBracket = { bg = "NONE", ctermbg = "NONE" },
        TSPunctSpecial = { bg = "NONE", ctermbg = "NONE" },

        -- 诊断相关透明设置
        DiagnosticVirtualTextError = { bg = "NONE", ctermbg = "NONE" },
        DiagnosticVirtualTextWarn = { bg = "NONE", ctermbg = "NONE" },
        DiagnosticVirtualTextInfo = { bg = "NONE", ctermbg = "NONE" },
        DiagnosticVirtualTextHint = { bg = "NONE", ctermbg = "NONE" },
      },
      astrodark = { -- a table of overrides/changes when applying the astrotheme theme
        Normal = { bg = "NONE", ctermbg = "NONE" },
        NormalNC = { bg = "NONE", ctermbg = "NONE" },
      },
    },
    -- Icons can be configured throughout the interface
    icons = {
      -- configure the loading of the lsp in the status line
      LSPLoading1 = "⠋",
      LSPLoading2 = "⠙",
      LSPLoading3 = "⠹",
      LSPLoading4 = "⠸",
      LSPLoading5 = "⠼",
      LSPLoading6 = "⠴",
      LSPLoading7 = "⠦",
      LSPLoading8 = "⠧",
      LSPLoading9 = "⠇",
      LSPLoading10 = "⠏",
    },
    -- Configure the status line
    status = {
      separators = {
        left = { "", "" },
        right = { "", "" },
      },
    },
  },
}
