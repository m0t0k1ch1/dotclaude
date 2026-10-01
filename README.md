# dotclaude

## Setup

```
make setup
```

## Files

| File | 用途 | 配置先 |
| --- | --- | --- |
| `CLAUDE.cloud.md` | Claude Code のクラウドセッション | `~/.claude/CLAUDE.md` |

## Cloud Sessions

クラウド環境の Setup script に次を設定する。

```bash
#!/bin/bash
set -euo pipefail

GOBIN=/usr/local/bin /usr/local/go/bin/go install github.com/x-motemen/ghq@v1
git config --global ghq.root /home/user/ghq

mkdir -p ~/.claude
curl -fsSL https://raw.githubusercontent.com/m0t0k1ch1/dotclaude/main/CLAUDE.cloud.md \
  -o ~/.claude/CLAUDE.md
```
