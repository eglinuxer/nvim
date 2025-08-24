-- AstroCore provides a central place to modify mappings, vim options, autocommands, and more!
-- Configuration documentation can be found with `:h astrocore`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

---@type LazySpec
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    -- Configure core features of AstroNvim
    features = {
      large_buf = { size = 1024 * 500, lines = 10000 }, -- set global limits for large files for disabling features like treesitter
      autopairs = true, -- enable autopairs at start
      cmp = true, -- enable completion at start
      diagnostics = { virtual_text = true, virtual_lines = false }, -- diagnostic settings on startup
      highlighturl = true, -- highlight URLs at start
      notifications = true, -- enable notifications at start
    },
    -- Diagnostics configuration (for vim.diagnostics.config({...})) when diagnostics are on
    diagnostics = {
      virtual_text = true,
      underline = true,
    },
    -- passed to `vim.filetype.add`
    filetypes = {
      -- see `:h vim.filetype.add` for usage
      extension = {
        -- Add custom file extensions here if needed
      },
      filename = {
        -- Add custom filenames here if needed
      },
      pattern = {
        -- Add custom patterns here if needed
      },
    },
    -- vim options can be configured here
    options = {
      opt = { -- vim.opt.<key>
        relativenumber = true, -- sets vim.opt.relativenumber
        number = true, -- sets vim.opt.number
        spell = false, -- sets vim.opt.spell
        signcolumn = "yes", -- sets vim.opt.signcolumn to yes
        wrap = false, -- sets vim.opt.wrap
        list = true, -- enable display of invisible characters
        updatetime = 100, -- faster completion
        timeoutlen = 300, -- faster key response
        listchars = {
          tab = "→ ", -- show tabs as arrows
          trail = "•", -- show trailing spaces as dots
          extends = "⟩", -- show when line extends beyond screen
          precedes = "⟨", -- show when line precedes screen
          nbsp = "␣", -- show non-breaking spaces
          -- space = "·", -- show spaces as middle dots (optional, can be removed if too cluttered)
        },
      },
      g = { -- vim.g.<key>
        -- configure global vim variables (vim.g)
        -- NOTE: `mapleader` and `maplocalleader` must be set in the AstroNvim opts or before `lazy.setup`
        -- This can be found in the `lua/lazy_setup.lua` file
      },
    },
    -- Mappings can be configured through AstroCore as well.
    -- NOTE: keycodes follow the casing in the vimdocs. For example, `<Leader>` must be capitalized
    mappings = {
      -- first key is the mode
      n = {
        -- second key is the lefthand side of the map

        -- navigate buffer tabs
        ["]b"] = { function() require("astrocore.buffer").nav(vim.v.count1) end, desc = "Next buffer" },
        ["[b"] = { function() require("astrocore.buffer").nav(-vim.v.count1) end, desc = "Previous buffer" },

        -- mappings seen under group name "Buffer"
        ["<Leader>bd"] = {
          function()
            require("astroui.status.heirline").buffer_picker(
              function(bufnr) require("astrocore.buffer").close(bufnr) end
            )
          end,
          desc = "Close buffer from tabline",
        },

        -- tables with just a `desc` key will be registered with which-key if it's installed
        -- this is useful for naming menus
        -- ["<Leader>b"] = { desc = "Buffers" },

        -- Whitespace management
        ["<Leader>tw"] = {
          function()
            -- Remove trailing whitespace
            vim.cmd [[%s/\s\+$//e]]
            print "Trailing whitespace removed"
          end,
          desc = "Trim trailing whitespace",
        },

        ["<Leader>tl"] = {
          function()
            -- Remove trailing empty lines
            vim.cmd [[%s#\($\n\s*\)\+\%$##e]]
            print "Trailing empty lines removed"
          end,
          desc = "Trim trailing empty lines",
        },

        -- Toggle whitespace display
        ["<Leader>ul"] = {
          function()
            vim.opt_local.list = not vim.opt_local.list:get()
            local state = vim.opt_local.list:get() and "enabled" or "disabled"
            print("Whitespace display " .. state)
          end,
          desc = "Toggle whitespace display",
        },

        -- C/C++ Build mappings (using <Leader>m prefix to avoid conflicts)
        ["<Leader>mb"] = { "<cmd>CMakeBuild<cr>", desc = "CMake Build" },
        ["<Leader>mr"] = { "<cmd>CMakeRun<cr>", desc = "CMake Run" },
        ["<Leader>mt"] = { "<cmd>CMakeTest<cr>", desc = "CMake Test" },
        ["<Leader>mc"] = { "<cmd>CMakeClean<cr>", desc = "CMake Clean" },
        ["<Leader>md"] = { "<cmd>CMakeDebug<cr>", desc = "CMake Debug" },

        -- setting a mapping to false will disable it
        -- ["<C-S>"] = false,
      },
    },
  },
}
