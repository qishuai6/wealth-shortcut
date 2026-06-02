# 财富捷径 / Wealth Shortcut

<p align="center">
  <strong>基于《财富捷径》投资理念的个人理财 Claude Code Skill</strong><br>
  <em>A personal finance Claude Code Skill based on <br>"Wealth Shortcut" (财富捷径) by 硅谷居士</em>
</p>

<p align="center">
  <a href="#中文说明">中文</a> · <a href="#english">English</a>
</p>

---

## 中文说明

### 一行命令安装

```bash
bash <(curl -fsSL https://raw.githubusercontent.com/qishuai6/wealth-shortcut/main/skills/wealth-shortcut/scripts/install.sh)
```

安装后直接在 Claude Code 里使用：`/wealth-shortcut` 或 `/理财`

### 这是什么？

这是一个 [Claude Code](https://claude.ai/code) 的 Skill，基于硅谷居士的理财著作《财富捷径》的投资理念，为用户提供个人理财咨询和规划服务。

### 功能

| 功能 | 说明 | 示例提问 |
|------|------|---------|
| 📈 定投规划 | 计算基金定投的预期收益 | "每月投 5000，30 年后有多少？" |
| 🏝️ 财务自由计算 | 估算财务自由所需资产和时间 | "我需要多少钱才能财务自由？" |
| 📊 理财指数评估 | 评估家庭的理财水平 | "我的理财水平怎么样？" |
| 🧮 72 法则 | 快速估算资产翻倍时间 | "10% 收益率多久翻倍？" |
| 💰 投资产品推荐 | 按用户所在地推荐指数基金 | "我在中国该买什么基金？" |
| 🧘 投资心理辅导 | 帮助克服投资中的心理误区 | "股市跌了很慌怎么办？" |
| 🏦 4% 取钱法则 | 退休安全取款规划 | "退休后每年能取多少？" |
| ☕ 消费机会成本 | 计算日常消费的隐性成本 | "每天一杯咖啡的机会成本？" |
| ⚖️ 资产配置建议 | 根据风险承受力给出配置方案 | "新手该怎么配置资产？" |

### 安装方式

**方式一：一行命令（推荐）**

```bash
bash <(curl -fsSL https://raw.githubusercontent.com/qishuai6/wealth-shortcut/main/skills/wealth-shortcut/scripts/install.sh)
```

**方式二：从本地 clone 安装**

```bash
git clone https://github.com/qishuai6/wealth-shortcut.git
bash wealth-shortcut/skills/wealth-shortcut/scripts/install.sh
```

**方式三：预览模式（不写文件）**

```bash
bash <(curl -fsSL https://raw.githubusercontent.com/qishuai6/wealth-shortcut/main/skills/wealth-shortcut/scripts/install.sh) --dry-run
```

**刷新已有文件：**

```bash
bash <(curl -fsSL https://raw.githubusercontent.com/qishuai6/wealth-shortcut/main/skills/wealth-shortcut/scripts/install.sh) --force
```

### 核心理念

1. **指数基金为王** — 大盘指数基金是最安全可靠的股市投资产品
2. **有钱就买，需钱才卖** — 把基金账户当存款账户
3. **躺平投资** — 在市场中的时间比择时更重要
4. **复利奇迹** — 世界第八大奇迹
5. **拒绝择时** — 没有人能持续预测股市短期走势
6. **长期持有** — 标普 500 持有 20 年以上正收益概率 100%

### 目录结构

```
.
├── README.md
├── .gitignore
├── skills/
│   └── wealth-shortcut/
│       ├── SKILL.md              # 入口 skill
│       └── scripts/
│           └── install.sh        # 安装脚本
└── skill-template/
    └── skills/
        └── wealth-shortcut/
            ├── SKILL.md          # 主技能文件
            ├── dca.md            # 定投规划
            ├── fire.md           # 财务自由计算
            ├── score.md          # 理财指数评估
            ├── math.md           # 数学工具（72法则等）
            ├── funds.md          # 投资产品推荐
            ├── psychology.md     # 投资心理辅导
            ├── withdraw.md       # 4% 取钱法则
            ├── opportunity-cost.md # 消费机会成本
            └── allocation.md     # 资产配置建议
```

### 推荐书目

- 《简单致富》(*The Simple Path to Wealth*)
- *The Bogleheads' Guide to Investing*
- 《有钱人和你想的不一样》(*Secrets of the Millionaire Mind*)

### 免责声明

本 Skill 仅提供基于书籍观点的理财知识科普和计算工具，**不构成任何投资建议**。投资有风险，入市需谨慎。

---

<a id="english"></a>

## English

### One-Line Install

```bash
bash <(curl -fsSL https://raw.githubusercontent.com/qishuai6/wealth-shortcut/main/skills/wealth-shortcut/scripts/install.sh)
```

After installation, use in Claude Code: `/wealth-shortcut`

### What is this?

A [Claude Code](https://claude.ai/code) Skill based on the investment philosophy of *"Wealth Shortcut"* (财富捷径) by 硅谷居士. It provides personal finance consulting and planning powered by Claude AI.

### Features

| Feature | Description | Example Prompt |
|---------|-------------|---------------|
| 📈 DCA Planner | Calculate expected returns from dollar-cost averaging | "If I invest $500/month for 30 years?" |
| 🏝️ FIRE Calculator | Estimate assets and timeline for financial independence | "How much do I need to retire?" |
| 📊 Finance Score | Evaluate your household's financial literacy | "How's my financial management?" |
| 🧮 Rule of 72 | Quick asset doubling time estimates | "How long to double at 10%?" |
| 💰 Fund Recommendations | Index fund suggestions by region | "What funds should I buy in China?" |
| 🧘 Psychology Coach | Overcome common investing psychological biases | "I'm panicking about the market crash!" |
| 🏦 4% Withdrawal Rule | Safe retirement withdrawal planning | "How much can I safely withdraw?" |
| ☕ Opportunity Cost | Calculate the hidden cost of daily spending | "What's the real cost of daily coffee?" |
| ⚖️ Asset Allocation | Portfolio recommendations by risk tolerance | "How should a beginner allocate?" |

### Installation

**Option 1: One-line (recommended)**

```bash
bash <(curl -fsSL https://raw.githubusercontent.com/qishuai6/wealth-shortcut/main/skills/wealth-shortcut/scripts/install.sh)
```

**Option 2: From a local clone**

```bash
git clone https://github.com/qishuai6/wealth-shortcut.git
bash wealth-shortcut/skills/wealth-shortcut/scripts/install.sh
```

**Option 3: Dry run (preview without writing)**

```bash
bash <(curl -fsSL https://raw.githubusercontent.com/qishuai6/wealth-shortcut/main/skills/wealth-shortcut/scripts/install.sh) --dry-run
```

**Refresh existing files:**

```bash
bash <(curl -fsSL https://raw.githubusercontent.com/qishuai6/wealth-shortcut/main/skills/wealth-shortcut/scripts/install.sh) --force
```

### Core Philosophy

1. **Index Funds Rule** — Broad-market index funds are the safest and most reliable equity investment
2. **Buy when you have money, sell only when you need money**
3. **Time in the market beats timing the market**
4. **Compound Interest** — The "eighth wonder of the world" (Einstein)
5. **No Market Timing** — No one can consistently predict short-term market movements
6. **Long-term Holding** — S&P 500 has a 100% positive return probability over 20+ years

### Directory Structure

```
.
├── README.md
├── .gitignore
├── skills/
│   └── wealth-shortcut/
│       ├── SKILL.md              # Entry skill
│       └── scripts/
│           └── install.sh        # Install script
└── skill-template/
    └── skills/
        └── wealth-shortcut/
            ├── SKILL.md          # Main skill file
            ├── dca.md            # Dollar-cost averaging
            ├── fire.md           # Financial independence
            ├── score.md          # Finance score
            ├── math.md           # Investment math tools
            ├── funds.md          # Fund recommendations
            ├── psychology.md     # Investing psychology
            ├── withdraw.md       # 4% withdrawal rule
            ├── opportunity-cost.md # Spending opportunity cost
            └── allocation.md     # Asset allocation
```

### Recommended Reading

- *The Simple Path to Wealth* by JL Collins
- *The Bogleheads' Guide to Investing*
- *Secrets of the Millionaire Mind* by T. Harv Eker

### Disclaimer

This Skill provides financial education and calculation tools based on a published book's viewpoints. It does **not constitute investment advice**. Investing involves risk.

---

<p align="center">
  Made with ❤️ based on <em>财富捷径</em> by 硅谷居士
</p>
