return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      filtered_items = {
        visible = true, -- 确保显示隐藏文件
        hide_dotfiles = false, -- 显示以 . 开头的文件
        hide_gitignored = false, -- 显示被 .gitignore 忽略的文件
      },
    },
  },
  config = function(_, opts)
    require("neo-tree").setup(opts)
  end,
}

