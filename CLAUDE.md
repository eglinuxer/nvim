# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

This is an AstroNvim v5 configuration repository optimized for C++ development. AstroNvim is a modern, extensible Neovim distribution that provides a comprehensive IDE-like experience with performance-focused lazy loading and a rich plugin ecosystem. The configuration emphasizes development productivity with Git integration, CMake support, and debugging tools while maintaining most plugin configurations in a disabled state for selective activation.

## Architecture

### Core Structure
- `init.lua` - Bootstrap file that sets up Lazy.nvim package manager with error handling and validation
- `lua/lazy_setup.lua` - Main Lazy.nvim configuration that imports AstroNvim v5 core, community plugins, and user customizations
- `lua/polish.lua` - Final configuration stage for pure Lua customizations (currently disabled)
- `lua/plugins/` - Plugin-specific configurations and overrides following LazySpec format
- `lua/community.lua` - AstroCommunity plugin pack imports (currently enabled with essential packs)

### Configuration Philosophy
AstroNvim v5 follows a **plugin-based architecture** where AstroNvim itself is a plugin managed by Lazy.nvim. The configuration uses:
- **Lazy loading** for optimal startup performance  
- **Modular specifications** through LazySpec tables
- **Community-driven** plugin packs via AstroCommunity
- **Template-based** customization patterns

### Current Configuration State
The setup is running **AstroNvim v5** with selective customizations:

**Active Configurations:**
- `astrocore.lua` - Core vim options, mappings, and features (actively customized with CMake build mappings)
- `community.lua` - Comprehensive community plugin imports (Lua pack, C++ pack, Git plugins, debugging tools)
- `lazy_setup.lua` - Main plugin configuration with AstroNvim v5

**Disabled Configurations (with guard clauses):**
- `astrolsp.lua` - LSP server configurations 
- `astroui.lua` - UI themes and visual customizations
- `mason.lua` - Tool installer configuration
- `none-ls.lua` - Formatting and diagnostic tools
- `treesitter.lua` - Syntax highlighting configuration
- `user.lua` - Custom plugin additions
- `polish.lua` - Final customization stage

### Key Configuration Files
- **astrocore.lua** - Core vim options, mappings, autocommands, and AstroNvim features
- **astrolsp.lua** - LSP server configurations, handlers, and language-specific settings  
- **astroui.lua** - UI themes, statusline, winbar, and visual customizations
- **mason.lua** - Tool installer for LSP servers, formatters, linters, and debuggers
- **none-ls.lua** - Formatting and diagnostic tools (null-ls successor)
- **treesitter.lua** - Syntax highlighting, code parsing, and text objects
- **user.lua** - Custom plugin additions and configuration overrides

### Leader Key Configuration
- **Leader**: `<Space>` (configured in lazy_setup.lua)
- **Local Leader**: `,` (configured in lazy_setup.lua)

## AstroNvim v5 Features

### Modern Plugin Stack
AstroNvim v5 includes significant modernization:
- **Blink.cmp** (replaces nvim-cmp) - Modern completion engine
- **Snacks.nvim** (replaces alpha-nvim, dressing.nvim) - Multi-purpose utility plugin
- **Mini.icons** (replaces nvim-web-devicons) - Icon provider
- **Mason-tool-installer** - Automatic tool management

### Performance Optimizations  
- Disabled unnecessary runtime plugins (gzip, netrw, tar, tohtml, zip)
- Lazy loading with import-based plugin management
- Large file detection and feature disabling (256KB+ or 10K+ lines)
- Backdrop UI for better focus

## Common Development Commands

### Neovim Operations
```bash
nvim                    # Start Neovim
```

### Plugin Management (within Neovim)
```vim
:Lazy                   # Open Lazy.nvim plugin manager interface
:Lazy update            # Update all plugins
:Lazy clean             # Remove unused plugins
:Lazy profile           # View startup performance profile

" AstroNvim specific commands
:AstroUpdate           # Update AstroNvim core and pinned plugins  
:AstroReload           # Reload AstroNvim configuration
:AstroVersion          # Show version information
```

### Development Tools (within Neovim)
```vim
" LSP Management
:LspInfo               # Show LSP server status
:LspInstall <server>   # Install LSP server via Mason
:LspRestart            # Restart LSP servers

" Syntax and Parsing
:TSInstall <language>  # Install Treesitter parser
:TSUpdate              # Update all Treesitter parsers
:TSPlaygroundToggle    # Toggle Treesitter playground

" Debugging
:DapInstall <debugger> # Install debugger adapter
:DapContinue          # Start/continue debugging session
```

### Configuration Management

**Activating Disabled Configurations:**
Remove guard clauses from plugin files:
```lua
-- Remove this line to activate configuration
if true then return {} end
```

**Recommended Activation Order:**
1. `astrocore.lua` - Core options and mappings (already active)
2. `astroui.lua` - UI customizations and theming
3. `astrolsp.lua` - Language server configurations  
4. `mason.lua` - Tool management
5. `user.lua` - Custom plugins and overrides
6. `polish.lua` - Final customizations

### Health Checking and Diagnostics
```vim
:checkhealth           # Comprehensive health check
:checkhealth lazy      # Check Lazy.nvim status
:checkhealth mason     # Check Mason tool installations
:checkhealth lsp       # Check LSP server status
:messages              # View error messages and notifications
```

### Configuration Validation
- **Selene** - Lua linting (configured in `selene.toml` with Neovim standard)
- **lua_ls** - Lua language server (configured in `.luarc.json` with format disabled)

### Git Operations
The repository tracks configuration changes with standard git commands:
```bash
git status                     # Check current changes
git add .                      # Stage all changes
git commit -m "message"        # Commit changes
git push                       # Push to remote (if configured)
```

## Key Features Currently Active

### Custom Mappings (astrocore.lua)
| Mapping | Mode | Action | Description |
|---------|------|--------|-------------|
| `<Leader>tw` | Normal | Trim whitespace | Remove trailing whitespace from buffer |
| `<Leader>tl` | Normal | Trim empty lines | Remove trailing empty lines from buffer |
| `<Leader>ul` | Normal | Toggle list mode | Show/hide invisible characters |
| `<Leader>bd` | Normal | Buffer picker close | Close buffer via interactive picker |
| `]b` / `[b` | Normal | Buffer navigation | Navigate between buffers |
| `<Leader>mb` | Normal | CMake Build | Execute CMake build command |
| `<Leader>mr` | Normal | CMake Run | Execute CMake run command |
| `<Leader>mt` | Normal | CMake Test | Execute CMake test command |
| `<Leader>mc` | Normal | CMake Clean | Execute CMake clean command |
| `<Leader>md` | Normal | CMake Debug | Execute CMake debug command |

### Display and Editor Settings
**Invisible Character Visualization:**
- Tabs: `→ ` (arrow with space)
- Trailing spaces: `•` (bullet)
- Line extensions: `⟩⟨` (angle brackets)
- Non-breaking spaces: `␣` (open box)

**Editor Options:**
- `relativenumber = true` - Relative line numbers
- `number = true` - Absolute line number on current line  
- `wrap = false` - No line wrapping
- `list = true` - Show invisible characters
- `signcolumn = "yes"` - Always show sign column

### Community Plugins Active
- **pack.lua** - Lua language support (LSP, formatting, snippets)
- **pack.cpp** - C++ language support and development tools
- **neogit** - Git interface for Neovim
- **diffview-nvim** - Enhanced diff viewing
- **git-blame-nvim** - Git blame information
- **gitlinker-nvim** - Generate git links
- **nvim-dap-repl-highlights** - Debug REPL syntax highlighting
- **nvim-spectre** - Search and replace across project
- **indent-blankline-nvim** - Indentation guides
- **mini-indentscope** - Current scope highlighting
- **vim-tmux-yank** - Tmux clipboard integration
- **vim-tmux-navigator** - Seamless vim/tmux navigation

### AstroNvim Core Features
- **Autopairs** - Automatic bracket/quote pairing
- **Completion** - Intelligent code completion via Blink.cmp
- **Diagnostics** - LSP diagnostics with virtual text
- **URL highlighting** - Automatic URL detection and highlighting  
- **Notifications** - User-friendly notification system

## Development Workflow

### C++/CMake Development
The configuration includes specialized support for C++ development:
1. **CMake Commands** - Use `<Leader>m` prefix mappings for build operations
2. **Language Support** - C++ pack provides LSP, debugging, and syntax highlighting
3. **Project Search** - Use nvim-spectre (`<Leader>s`) for project-wide search/replace

### Configuration Testing
1. **Modify configuration files** - Edit plugin specifications or options
2. **Reload Neovim** - Restart or use `:AstroReload` for some changes
3. **Check health** - Run `:checkhealth` to verify functionality
4. **Review messages** - Use `:messages` to check for errors or warnings

### Adding New Features
1. **Search AstroCommunity** - Check https://github.com/AstroNvim/astrocommunity for existing packs
2. **Import community packs** - Add to `lua/community.lua` for standardized configs
3. **Custom plugins** - Add to `lua/plugins/user.lua` for personal customizations
4. **Override defaults** - Create specific plugin files in `lua/plugins/` directory

### Troubleshooting
```vim
:Lazy log              # View plugin installation/update logs
:LspLog                # View LSP server logs  
:AstroChangelog        # View AstroNvim changelog
:checkhealth           # Comprehensive system health check
```

## File Organization Patterns

### AstroNvim v5 Conventions
- **LazySpec tables** - All plugin configurations return LazySpec format
- **Import-based loading** - Plugins loaded via `import` keys in lazy_setup.lua
- **Community-first** - Prefer AstroCommunity packs over custom configurations
- **Modular structure** - Separate files for different plugin categories
- **Guard clause pattern** - Selective activation via `if true then return {} end`

### Directory Structure
```
~/.config/nvim/
├── init.lua                    # Bootstrap and entry point
├── lua/
│   ├── lazy_setup.lua         # Main plugin configuration
│   ├── community.lua          # Community plugin imports
│   ├── polish.lua             # Final customizations
│   └── plugins/               # Individual plugin configurations
│       ├── astrocore.lua      # Core vim settings
│       ├── astrolsp.lua       # LSP configuration
│       ├── astroui.lua        # UI customization
│       ├── mason.lua          # Tool management
│       ├── none-ls.lua        # Formatting/linting
│       ├── treesitter.lua     # Syntax highlighting
│       └── user.lua           # Custom plugins
├── KEYBINDINGS.md             # Comprehensive keybinding reference
└── README.md                  # Installation and setup guide
```

## Migration and Updates

### AstroNvim v5 Migration Notes
- **Breaking changes** - Some plugins replaced (nvim-cmp → blink.cmp, alpha → snacks)
- **Neovim requirement** - Minimum Neovim 0.10+ required  
- **Configuration compatibility** - Most v4 configs work with minimal changes
- **Community evolution** - Enhanced AstroCommunity integration

### Update Strategy
1. **Backup configuration** - Save current working setup
2. **Review changelog** - Check `:AstroChangelog` for breaking changes
3. **Update incrementally** - Test major changes in isolation
4. **Verify functionality** - Run comprehensive health checks post-update

## Documentation References

- **Keybinding Reference**: `KEYBINDINGS.md` - Comprehensive Chinese documentation
- **Installation Guide**: `README.md` - Setup instructions and requirements  
- **Official Documentation**: https://docs.astronvim.com/ - Complete reference guide
- **Community Plugins**: https://github.com/AstroNvim/astrocommunity - Plugin specifications
- **Migration Guide**: https://docs.astronvim.com/configuration/v5_migration/ - v5 upgrade instructions

This configuration represents a modern, performance-optimized AstroNvim v5 setup with selective customizations and community plugin integration.