# AstroNvim v5 快捷键指南

## 📖 概述

本文档基于当前的 AstroNvim v5 配置，详细列出所有可用的快捷键映射。当前配置的特点：

- **Leader Key**: `<Space>` (空格键)
- **Local Leader Key**: `,` (逗号)  
- **主要特性**: 大部分自定义插件配置当前被禁用（有 guard 子句），使用 AstroNvim 默认配置
- **发现快捷键**: 按 `<Space>` 后等待，which-key 会显示所有可用映射的弹出菜单

---

## 🔧 当前配置状态分析

当前配置中以下文件被禁用（包含 `if true then return {} end`）：
- `astrocore.lua` - 核心映射和选项
- `astrolsp.lua` - LSP 配置和映射  
- `astroui.lua` - UI 自定义
- `user.lua` - 用户自定义插件
- `mason.lua` - 包管理器配置
- `none-ls.lua` - 格式化和诊断工具
- `treesitter.lua` - 语法高亮配置
- `community.lua` - 社区插件包
- `polish.lua` - 最终配置调整

**因此当前使用的是 AstroNvim v5 的纯默认配置。**

---

## 🚀 核心快捷键

### 📁 文件和缓冲区管理

| 快捷键 | 功能描述 | 模式 |
|--------|----------|------|
| `<Leader>n` | 新建文件 | Normal |
| `<Leader>e` | 切换文件浏览器 (Neo-tree) | Normal |
| `<Leader>o` | 聚焦到文件浏览器 | Normal |
| `<Ctrl-s>` | 保存文件 | Normal/Insert |
| `<Ctrl-q>` | 退出 | Normal |

### 🔄 缓冲区操作

| 快捷键 | 功能描述 | 模式 |
|--------|----------|------|
| `H` | 切换到上一个缓冲区 | Normal |
| `L` | 切换到下一个缓冲区 | Normal |
| `]b` / `[b` | 下一个/上一个缓冲区 | Normal |
| `<Leader>c` | 关闭当前缓冲区 | Normal |
| `<Leader>bb` | 缓冲区选择器 | Normal |
| `<Leader>bc` | 关闭除当前外所有缓冲区 | Normal |
| `<Leader>bC` | 关闭所有缓冲区 | Normal |

#### 缓冲区排序
| 快捷键 | 功能描述 |
|--------|----------|
| `<Leader>bse` | 按扩展名排序 |
| `<Leader>bsi` | 按索引排序 |
| `<Leader>bsm` | 按修改时间排序 |
| `<Leader>bsp` | 按路径排序 |
| `<Leader>bsr` | 按相对路径排序 |

---

## 🪟 窗口管理

### 导航
| 快捷键 | 功能描述 | 模式 |
|--------|----------|------|
| `<Ctrl-h>` | 切换到左窗口 | Normal |
| `<Ctrl-j>` | 切换到下窗口 | Normal |
| `<Ctrl-k>` | 切换到上窗口 | Normal |
| `<Ctrl-l>` | 切换到右窗口 | Normal |

### 分割
| 快捷键 | 功能描述 | 模式 |
|--------|----------|------|
| `\\` | 水平分割窗口 | Normal |
| `\|` | 垂直分割窗口 | Normal |

### 调整大小
| 快捷键 | 功能描述 | 模式 |
|--------|----------|------|
| `<Ctrl-Up>` | 增加窗口高度 | Normal |
| `<Ctrl-Down>` | 减少窗口高度 | Normal |
| `<Ctrl-Left>` | 减少窗口宽度 | Normal |
| `<Ctrl-Right>` | 增加窗口宽度 | Normal |

---

## 🔍 搜索和查找 (Telescope)

### 文件搜索
| 快捷键 | 功能描述 | 模式 |
|--------|----------|------|
| `<Leader>ff` | 查找文件 | Normal |
| `<Leader>fw` | 实时搜索 (Live Grep) | Normal |
| `<Leader>fW` | 搜索当前单词 | Normal |
| `<Leader>fb` | 浏览缓冲区 | Normal |
| `<Leader>fo` | 查找旧文件 | Normal |
| `<Leader>fr` | 最近文件 | Normal |

### Git 搜索
| 快捷键 | 功能描述 | 模式 |
|--------|----------|------|
| `<Leader>gb` | Git 分支 | Normal |
| `<Leader>gc` | Git 提交 | Normal |
| `<Leader>gt` | Git 状态 | Normal |
| `<Leader>go` | 在浏览器中打开 Git URL | Normal |

---

## 🔧 LSP (语言服务器协议)

### 基础功能
| 快捷键 | 功能描述 | 模式 |
|--------|----------|------|
| `K` | 悬停文档显示 | Normal |
| `<Leader>lf` | 格式化文档 | Normal |
| `<Leader>la` / `gra` | 代码行为 (Code Actions) | Normal |
| `<Leader>lr` / `grn` | 重命名符号 | Normal |
| `<Leader>lh` | 签名帮助 | Normal |
| `<Leader>li` | LSP 信息 | Normal |
| `<Leader>lI` | LSP 安装器 | Normal |

### 导航
| 快捷键 | 功能描述 | 模式 |
|--------|----------|------|
| `gd` | 转到定义 | Normal |
| `gri` | 转到实现 (v5 中从 gI 移动) | Normal |
| `gO` | 文档符号 (v5 新增) | Normal |
| `<Leader>ls` | 文档符号 | Normal |
| `<Leader>lS` | 符号大纲 | Normal |

### 诊断
| 快捷键 | 功能描述 | 模式 |
|--------|----------|------|
| `]d` / `[d` | 下一个/上一个诊断 | Normal |
| `]e` / `[e` | 下一个/上一个错误 | Normal |
| `]w` / `[w` | 下一个/上一个警告 | Normal |
| `gl` | 显示行诊断 | Normal |
| `<Leader>ld` | 显示行诊断 | Normal |
| `<Leader>lD` | 显示所有诊断 | Normal |

---

## 🐛 调试 (Debugging)

### 基础控制
| 快捷键 | 功能描述 | 模式 |
|--------|----------|------|
| `<Leader>dc` / `<F5>` | 开始/继续调试 | Normal |
| `<Leader>db` / `<F9>` | 切换断点 | Normal |
| `<Leader>dB` | 条件断点 | Normal |
| `<Leader>dr` | 重启调试会话 | Normal |
| `<Leader>dt` | 终止调试会话 | Normal |

### 步进控制
| 快捷键 | 功能描述 | 模式 |
|--------|----------|------|
| `<Leader>do` / `<F10>` | 单步跳过 | Normal |
| `<Leader>di` / `<F11>` | 单步进入 | Normal |
| `<Leader>dO` / `<F12>` | 单步跳出 | Normal |

### 调试界面
| 快捷键 | 功能描述 | 模式 |
|--------|----------|------|
| `<Leader>du` | 切换调试 UI | Normal |
| `<Leader>dh` | 调试悬停 | Normal |
| `<Leader>dp` | 调试预览 | Normal |
| `<Leader>dr` | 调试 REPL | Normal |

---

## 💻 终端

| 快捷键 | 功能描述 | 模式 |
|--------|----------|------|
| `<Leader>tf` / `<F7>` | 浮动终端 | Normal |
| `<Leader>th` | 水平终端 | Normal |
| `<Leader>tv` | 垂直终端 | Normal |
| `<Leader>tl` | LazyGit 终端 | Normal |

---

## 🎨 UI 和用户体验切换

### 诊断切换
| 快捷键 | 功能描述 | 模式 |
|--------|----------|------|
| `<Leader>ud` | 切换诊断显示 | Normal |
| `<Leader>uv` | 切换诊断虚拟文本 | Normal |
| `<Leader>uV` | 切换诊断虚拟行 | Normal |

### 界面切换
| 快捷键 | 功能描述 | 模式 |
|--------|----------|------|
| `<Leader>uZ` | 切换禅模式 (v5 新增) | Normal |
| `<Leader>un` | 切换行号 | Normal |
| `<Leader>ur` | 切换相对行号 | Normal |
| `<Leader>us` | 切换拼写检查 | Normal |
| `<Leader>uw` | 切换自动换行 | Normal |

---

## 📝 编辑和注释

### 注释
| 快捷键 | 功能描述 | 模式 |
|--------|----------|------|
| `<Leader>/` | 切换行注释 | Normal/Visual |
| `gco` | 在当前行下方插入注释 | Normal |
| `gcO` | 在当前行上方插入注释 | Normal |

### 插入模式快捷键
| 快捷键 | 功能描述 | 模式 |
|--------|----------|------|
| `jj` / `jk` | 退出到普通模式 | Insert |

---

## 💾 会话管理

| 快捷键 | 功能描述 | 模式 |
|--------|----------|------|
| `<Leader>Ss` | 保存会话 | Normal |
| `<Leader>Sl` | 加载上一个会话 | Normal |
| `<Leader>Sd` | 删除会话 | Normal |
| `<Leader>Sf` | 搜索会话 | Normal |
| `<Leader>S.` | 加载当前目录会话 | Normal |

---

## 📦 包管理

| 命令 | 功能描述 |
|------|----------|
| `<Leader>pm` | Mason 安装器 |
| `:AstroUpdate` | 更新 AstroNvim |
| `:LspInstall <server>` | 安装 LSP 服务器 |
| `:TSInstall <language>` | 安装 Treesitter 解析器 |
| `:DapInstall <debugger>` | 安装调试器 |

---

## 🆕 v5 版本变化

### 移除的映射
- `<Ctrl-S>` (插入模式下保存) - 已移除，因为这是 Neovim 核心的签名帮助绑定
- `gI` (LSP实现) - 已移至 `gri`

### 新增功能
- `gO` - 文档符号导航
- `<Leader>go` - 在浏览器中打开 Git URL
- `<Leader>uZ` - 禅模式切换
- `gco` / `gcO` - 注释插入功能
- 诊断导航现在支持计数 (如：`3]e` 向前跳转3个错误)

---

## 💡 使用建议

1. **发现快捷键**: 按住 `<Space>` 键等待 which-key 弹出菜单，这是学习所有可用快捷键的最好方法

2. **激活自定义配置**: 要启用自定义配置，需要移除各配置文件开头的 `if true then return {} end` 行

3. **自定义映射**: 通过编辑 `astrocore.lua` 来添加或修改快捷键映射

4. **LSP 特定映射**: LSP 相关的映射只有在语言服务器附加到缓冲区时才会可用

5. **模式支持**: 大多数映射在普通模式下工作，部分在可视模式和插入模式下也有对应功能

6. **学习路径**: 建议先熟悉 Leader 键 (`<Space>`) 开头的映射，它们是 AstroNvim 功能的主要入口点

---

## 🔧 配置建议

如果要自定义当前配置，建议按以下顺序激活配置文件：

1. 首先激活 `astrocore.lua` (基础选项和映射)
2. 然后激活 `astroui.lua` (界面主题)  
3. 接着激活 `astrolsp.lua` (语言服务器)
4. 最后根据需要激活其他插件配置

每次激活后记得重启 Neovim 以使配置生效。