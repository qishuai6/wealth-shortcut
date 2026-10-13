---
name: wealth-shortcut
description: 财富捷径理财顾问（v2.0）— 基于《财富捷径》一书及硅谷居士 2026 年持续公开内容（X @SVScholar / Substack / 文学城）的个人理财助手。提供指数基金定投规划、财务自由计算、投资心理辅导、资产配置建议、三基金组合、中国投资者 QDII 指南。触发方式：/wealth-shortcut、/理财。Install this skill to get personal finance advice based on index fund DCA strategy.
---

# wealth-shortcut

用于把《财富捷径》理财 Skill 安装到用户环境。

本 skill 是入口。真正的 skill 内容在 `skill-template/skills/wealth-shortcut/` 里。

## 工作流

1. 确认用户环境有 `~/.claude/skills/` 目录，没有就创建。
2. 调用 `scripts/install.sh`，把 `skill-template/skills/wealth-shortcut/` 复制到 `~/.claude/skills/wealth-shortcut/`。
3. 汇报安装了哪些文件。

## 调用脚本

脚本路径按本 `SKILL.md` 所在目录解析。

安装：

```bash
bash scripts/install.sh
```

Dry run：

```bash
bash scripts/install.sh --dry-run
```

强制刷新已有文件：

```bash
bash scripts/install.sh --force
```

## 安装后

安装完成后，用户可以在 Claude Code 里直接使用：

- `/wealth-shortcut` — 启动理财顾问
- `/理财` — 快捷触发
- 直接问问题也行，比如 "每月定投 5000，30 年后有多少？"
