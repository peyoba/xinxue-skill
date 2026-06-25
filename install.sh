#!/bin/bash
# 王阳明心学陪练 Skill - 通用安装脚本
# 自动检测已安装的智能体，将 Skill 复制到对应目录

set -e

REPO_URL="https://github.com/peyoba/xinxue-skill.git"
SKILL_NAME="wang-yangming"
TEMP_DIR=$(mktemp -d)

echo "📥 正在下载 xinxue-skill..."
git clone --quiet "$REPO_URL" "$TEMP_DIR/$SKILL_NAME"

INSTALLED=0

# Hermes: ~/.hermes/skills/
if command -v hermes &>/dev/null || [ -d "$HOME/.hermes/skills" ]; then
    TARGET="$HOME/.hermes/skills/$SKILL_NAME"
    mkdir -p "$(dirname "$TARGET")"
    rm -rf "$TARGET"
    cp -r "$TEMP_DIR/$SKILL_NAME" "$TARGET"
    echo "✅ Hermes: 已安装到 $TARGET"
    INSTALLED=1
fi

# Claude Code: ~/.claude/skills/
if command -v claude &>/dev/null || [ -d "$HOME/.claude" ]; then
    TARGET="$HOME/.claude/skills/$SKILL_NAME"
    mkdir -p "$(dirname "$TARGET")"
    rm -rf "$TARGET"
    cp -r "$TEMP_DIR/$SKILL_NAME" "$TARGET"
    echo "✅ Claude Code: 已安装到 $TARGET"
    INSTALLED=1
fi

# Codex: ~/.codex/skills/
if command -v codex &>/dev/null || [ -d "$HOME/.codex" ]; then
    TARGET="$HOME/.codex/skills/$SKILL_NAME"
    mkdir -p "$(dirname "$TARGET")"
    rm -rf "$TARGET"
    cp -r "$TEMP_DIR/$SKILL_NAME" "$TARGET"
    echo "✅ Codex: 已安装到 $TARGET"
    INSTALLED=1
fi

# OpenClaw: ~/.openclaw/skills/
if command -v openclaw &>/dev/null || [ -d "$HOME/.openclaw" ]; then
    TARGET="$HOME/.openclaw/skills/$SKILL_NAME"
    mkdir -p "$(dirname "$TARGET")"
    rm -rf "$TARGET"
    cp -r "$TEMP_DIR/$SKILL_NAME" "$TARGET"
    echo "✅ OpenClaw: 已安装到 $TARGET"
    INSTALLED=1
fi

# 腾讯 WorkBuddy: ~/.workbuddy/skills/
if [ -d "$HOME/.workbuddy" ]; then
    TARGET="$HOME/.workbuddy/skills/$SKILL_NAME"
    mkdir -p "$(dirname "$TARGET")"
    rm -rf "$TARGET"
    cp -r "$TEMP_DIR/$SKILL_NAME" "$TARGET"
    echo "✅ 腾讯 WorkBuddy: 已安装到 $TARGET"
    INSTALLED=1
fi

# 未检测到任何智能体，下载到当前目录
if [ "$INSTALLED" -eq 0 ]; then
    cp -r "$TEMP_DIR/$SKILL_NAME" "./$SKILL_NAME"
    echo "⚠️  未检测到已安装的智能体，已下载到当前目录: ./$SKILL_NAME"
    echo "   请手动将文件复制到你的智能体技能目录中。"
fi

# 清理临时文件
rm -rf "$TEMP_DIR"

echo ""
echo "完成！🎉"
