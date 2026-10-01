# dotclaude

## Setup

```
make setup
```

## Files

| File | 用途 | 配置先 |
| --- | --- | --- |
| `CLAUDE.common.md` | 環境を問わない共通の規則 | `~/.claude/CLAUDE.md` |
| `CLAUDE.cloud.md` | Claude Code のクラウドセッション | `~/.claude/CLAUDE.md`（`CLAUDE.common.md` の後ろに連結） |

## Cloud Sessions

クラウド環境の Setup script に次を設定する。

```bash
#!/bin/bash
set -euo pipefail

GOBIN=/usr/local/bin /usr/local/go/bin/go install github.com/x-motemen/ghq@v1
git config --global ghq.root /home/user/ghq

base=https://raw.githubusercontent.com/m0t0k1ch1/dotclaude/main
mkdir -p ~/.claude
{
  curl -fsSL "$base/CLAUDE.common.md"
  echo
  curl -fsSL "$base/CLAUDE.cloud.md"
} > ~/.claude/CLAUDE.md
```
