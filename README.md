# dotclaude

Claude Code で使う規則と設定。各環境では、必要なファイルを `~/.claude/` 配下から参照して使う。

## 使い方

### クラウドセッション

クラウド環境の **セットアップスクリプト** に次を設定する（環境の設定は、claude.ai/code のメッセージ欄の上にある環境名を選ぶと開ける）。クラウドセッションの起動時には、その環境とこのリポジトリを選ぶ。

```bash
#!/bin/bash
set -euo pipefail

mkdir -p ~/.claude/rules
ln -sf /home/user/dotclaude/rules/common.md ~/.claude/rules/
```

## 保守

このリポジトリを更新するときの決まり。

- 文中の用語はカタカナで書く。英語のまま書くのは、固有名詞（Claude Code、Git、GitHub など）、略語（MCP、PR、URL など）、コードや識別子（バッククォートで囲む）、訳語もカタカナ表記も定着していない専門用語（例：frontmatter）に限る。略語が定着している用語は略語を使う（Pull Request ではなく PR）。既に記載のある用語は、その表記に揃える。
