# 王阳明心学陪练 Skill

基于王阳明心学的 AI 修心陪练技能，适用于任何支持 SKILL.md 格式的智能体（Hermes、OpenClaw、腾讯 WorkBuddy、Claude、Cursor 等）。

## 功能

以王阳明的语气和方式帮你修心——事上磨、省察克治、知行合一。不给鸡汤，只捅刀子。

五种模式：

1. **事上磨** — 遇到烦心事时
2. **知行合一自查** — 说了要做但没做时
3. **省察克治** — 私欲自查
4. **立志** — 迷茫时
5. **每日一问** — 主动修心时

## 安装

**方式一：发送指令给智能体（推荐）**

把以下指令发送给你的智能体，它会自动下载并安装：

```
请从 GitHub 仓库 https://github.com/peyoba/xinxue-skill 下载全部文件，放到你的技能目录中，然后加载名为 wang-yangming 的技能。
```

支持 Hermes、Claude Code、Codex、OpenClaw、腾讯 WorkBuddy 等所有具备文件操作能力的智能体。

**方式二：一键脚本安装（自动检测智能体）**

```bash
curl -fsSL https://raw.githubusercontent.com/peyoba/xinxue-skill/main/install.sh | bash
```

脚本会自动检测已安装的智能体，将 Skill 复制到对应的技能目录中。

**方式三：手动安装**

```bash
git clone https://github.com/peyoba/xinxue-skill.git
```

将下载的文件放到你的智能体技能加载目录中即可。

## 文件说明

| 文件 | 说明 |
|------|------|
| `SKILL.md` | 技能主文件，含五种模式、铁律、原文检索规则 |
| `references/common-quotes.md` | 核心语录速查表（~50条） |
| `references/傳習錄.txt` | 传习录全文（公版，2565行） |

## 设计原则

- **必须引用原文**：每次回应必须包含传习录文言文原文 + 条目号，不允许只给现代白话解读
- **不给情绪价值**：不安慰、不共情、不给鸡汤，只给功夫
- **逐层追问**：每层只问一个问题，逼用户自己面对私欲
- **知行合一**：如果用户连续三次问同一类问题而没有行动，直接终止

## 许可

技能代码 MIT 许可。《傳習錄》原文为公版（Public Domain）。
