-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },
  -- Git plugins
  { import = "astrocommunity.git.neogit" },
  { import = "astrocommunity.git.diffview-nvim" },
  { import = "astrocommunity.git.git-blame-nvim" },
  { import = "astrocommunity.git.gitlinker-nvim" },
  -- Indent visualization plugins
  { import = "astrocommunity.indent.indent-blankline-nvim" },
  { import = "astrocommunity.indent.mini-indentscope" },
  -- Terminal integration plugins
  { import = "astrocommunity.terminal-integration.vim-tmux-yank" },
  { import = "astrocommunity.terminal-integration.vim-tmux-navigator" },
  -- import/override with your plugins folder
}
