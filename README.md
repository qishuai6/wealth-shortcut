# 财富捷径 / Wealth Shortcut

<p align="center">
  <strong>基于《财富捷径》投资理念的个人理财 Claude Code Skill（v2.0）</strong><br>
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

**v2.1 更新（2026-10）**：内容窗口扩展到 2025 年 4 月至 2026 年 10 月（约 280 篇，X/Substack/文学城）。新增：香港开户 vs 境内 QDII 的税负测算、国内美股基金完整排行榜与选基四标准、全球核心资产收益率总表（5-50 年）、科技基金四强对比（VGT/XLK/IYW/QQQ）、借钱投资完整纪律、年金与重疾险分析、中国城市房价跌幅排行、古诗词金句库等。

### 功能

| 功能 | 说明 | 示例提问 |
|------|------|---------|
| 📈 定投规划 | 计算定投预期收益；一把梭 vs 分批 vs 工资定投 | "每月投 5000，30 年后有多少？" |
| 🏝️ 财务自由计算 | 估算财务自由所需资产和时间；15 年实证路径 | "我需要多少钱才能财务自由？" |
| 📊 理财指数评估 | 评估家庭的理财水平 | "我的理财水平怎么样？" |
| 🧮 72 法则 | 快速估算资产翻倍时间；收益率预测公式 | "10% 收益率多久翻倍？" |
| 💰 投资产品推荐 | 按地区推荐指数基金（美股 + 中国 QDII） | "我在中国该买什么基金？" |
| 🏛️ 三基金组合 🆕 | 标普500 + 信息技术 + 半导体，三档风格 | "我该按什么比例配置？" |
| 🇨🇳 中国投资者指南 🆕 | QDII 基金、溢价/汇率、公积金路径、A股/中概股批判、房产观点 | "人民币怎么买美股？" |
| 🎢 杠杆与房贷 🆕 | 房贷杠杆公式、不提前还贷、融资纪律、杠杆ETF禁区 | "要不要提前还房贷？" |
| 🛡️ 保险专题 🆕 | 定期寿险 vs 储蓄型保险，「买定投余」 | "要不要买增额终身寿？" |
| 🧘 投资心理辅导 | 散户认命论、波动≠风险、应对大跌 | "股市跌了很慌怎么办？" |
| 🏦 4% 取钱法则 | 退休安全取款；退休后 90/10 配置；社安金年龄 | "退休后每年能取多少？" |
| ☕ 消费机会成本 | 计算日常消费的隐性成本 | "每天一杯咖啡的机会成本？" |
| ⚖️ 资产配置建议 | 以三基金为纲，按风险承受力给方案 | "新手该怎么配置资产？" |

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

1. **指数基金为王** — 指数基金占美国股票基金规模已超 55%
2. **有钱就投，需钱才卖** — 把基金账户当存款账户
3. **标普 500 是压舱石** — 不要全仓纳指；板块基金（VGT/SMH）是增强仓
4. **躺平投资** — 在市场中的时间比择时更重要
5. **散户要认命** — 散户平均年化 4-5% vs 指数 13-16%，败因全是行为
6. **波动 ≠ 风险** — 风险是被迫在坏时点卖出的概率
7. **长期持有** — 标普 500 持有 20 年以上正收益概率 100%

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
            ├── dca.md            # 定投规划（三场景辨析）
            ├── fire.md           # 财务自由计算（15年路径/不追求早退休）
            ├── score.md          # 理财指数评估
            ├── math.md           # 数学工具（72法则/收益率预测）
            ├── funds.md          # 投资产品推荐
            ├── three-fund.md     # 🆕 硅谷居士三基金组合
            ├── china.md          # 🆕 中国投资者指南（QDII/A股/房产）
            ├── leverage.md       # 🆕 杠杆、房贷与借钱投资
            ├── insurance.md      # 🆕 保险专题（买定投余）
            ├── psychology.md     # 投资心理辅导
            ├── withdraw.md       # 4% 取钱法则（90/10/社安金）
            ├── opportunity-cost.md # 消费机会成本
            └── allocation.md     # 资产配置建议
```

### 推荐书目

- 《简单致富》(*The Simple Path to Wealth*)
- *The Bogleheads' Guide to Investing*
- 《有钱人和你想的不一样》(*Secrets of the Millionaire Mind*)
- 《万亿指数》(*Trillions*)

### 免责声明

本 Skill 仅提供基于书籍和公开文章观点的理财知识科普和计算工具，**不构成任何投资建议**。投资有风险，入市需谨慎。

---

<a id="english"></a>

## English

### One-Line Install

```bash
bash <(curl -fsSL https://raw.githubusercontent.com/qishuai6/wealth-shortcut/main/skills/wealth-shortcut/scripts/install.sh)
```

After installation, use in Claude Code: `/wealth-shortcut`

### What is this?

A [Claude Code](https://claude.ai/code) Skill based on the investment philosophy of *"Wealth Shortcut"* (财富捷径) by 硅谷居士 (SVScholar). It provides personal finance consulting and planning powered by Claude AI.

**v2.0 (Oct 2026)**: Beyond the book, this version distills 200+ posts the author published April–October 2026 on X ([@SVScholar](https://x.com/SVScholar)), Substack and his blog — including his Three-Fund Portfolio, the QDII playbook for mainland-China investors, his leverage framework, insurance views, and the 90/10 retirement allocation.

### Features

| Feature | Description | Example Prompt |
|---------|-------------|---------------|
| 📈 DCA Planner | DCA return projections; lump sum vs. tranches vs. paycheck investing | "If I invest $500/month for 30 years?" |
| 🏝️ FIRE Calculator | Assets & timeline for financial independence; a real 15-year path | "How much do I need to retire?" |
| 📊 Finance Score | Evaluate your household's financial literacy | "How's my financial management?" |
| 🧮 Rule of 72 | Doubling-time estimates + return forecasting formula | "How long to double at 10%?" |
| 💰 Fund Recommendations | Index funds by region (US + China QDII) | "What funds should I buy in China?" |
| 🏛️ Three-Fund Portfolio 🆕 | S&P 500 + Info Tech + Semiconductors, 3 risk tiers | "How should I allocate?" |
| 🇨🇳 China Playbook 🆕 | QDII funds, premium/FX handling, A-share critique, housing views | "How to buy US index funds with CNY?" |
| 🎢 Leverage & Mortgage 🆕 | Mortgage leverage math, margin discipline, leveraged-ETF no-go | "Should I pay off my mortgage early?" |
| 🛡️ Insurance 🆕 | Term life vs. whole life; "buy term and invest the rest" | "Should I buy whole life insurance?" |
| 🧘 Psychology Coach | Retail-investor underperformance, volatility ≠ risk | "I'm panicking about the market crash!" |
| 🏦 4% Withdrawal Rule | Safe withdrawals; 90/10 retirement; Social Security timing | "How much can I safely withdraw?" |
| ☕ Opportunity Cost | Hidden cost of daily spending | "What's the real cost of daily coffee?" |
| ⚖️ Asset Allocation | Risk-tiered allocation built on the three-fund system | "How should a beginner allocate?" |

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

1. **Index Funds Rule** — Index funds now hold 55%+ of US equity fund assets
2. **Buy when you have money, sell only when you need money**
3. **S&P 500 is the ballast** — don't go all-in on Nasdaq 100; sector funds are enhancers
4. **Time in the market beats timing the market**
5. **Retail investors should "accept fate"** — average 4-5% annualized vs. 13-16% for the index; the gap is all behavior
6. **Volatility ≠ risk** — risk is being forced to sell at the wrong time
7. **Long-term Holding** — S&P 500 has a 100% positive return probability over 20+ years

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
            ├── three-fund.md     # 🆕 Three-Fund Portfolio
            ├── china.md          # 🆕 China investor playbook (QDII)
            ├── leverage.md       # 🆕 Leverage, mortgage & margin
            ├── insurance.md      # 🆕 Insurance (buy term, invest the rest)
            ├── psychology.md     # Investing psychology
            ├── withdraw.md       # 4% withdrawal rule
            ├── opportunity-cost.md # Spending opportunity cost
            └── allocation.md     # Asset allocation
```

### Recommended Reading

- *The Simple Path to Wealth* by JL Collins
- *The Bogleheads' Guide to Investing*
- *Secrets of the Millionaire Mind* by T. Harv Eker
- *Trillions* by Robin Wigglesworth

### Disclaimer

This Skill provides financial education and calculation tools based on published viewpoints. It does **not constitute investment advice**. Investing involves risk.

---

<p align="center">
  Made with ❤️ based on <em>财富捷径</em> by 硅谷居士
</p>
