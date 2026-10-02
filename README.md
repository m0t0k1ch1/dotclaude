# dotclaude

Claude Code で使う規則と設定。各環境では、必要なファイルを `~/.claude/` 配下から参照して使う。

## 使い方

### クラウドセッション

Claude Code のクラウド環境の **Setup script** に次を設定する。セッションの開始時にこのリポジトリを `~/dotclaude` にクローンし、`rules/` 配下のファイルを `~/.claude/rules/` にシンボリックリンクとして置く。環境の設定は、claude.ai/code のメッセージ欄の上にある環境名を選ぶと開ける。

```bash
#!/bin/bash
set -euo pipefail

git clone --depth 1 https://github.com/m0t0k1ch1/dotclaude ~/dotclaude
mkdir -p ~/.claude/rules
ln -sf ~/dotclaude/rules/*.md ~/.claude/rules/
```

セットアップスクリプトは、環境のキャッシュを作るときにしか実行されない。このリポジトリの更新は、キャッシュが作り直されたあと（スクリプトを変更したとき、またはキャッシュが約 7 日で失効したとき）のセッションから反映される。

## 保守

このリポジトリを更新するときの決まり。

- 文中の用語はカタカナで書く。英語のまま書くのは、固有名詞（Claude Code、Git、GitHub など）、略語（MCP、PR、URL など）、コードや識別子（バッククォートで囲む）、訳語もカタカナ表記も定着していない専門用語（例：frontmatter）に限る。略語が定着している用語は略語を使う（Pull Request ではなく PR）。既に記載のある用語は、その表記に揃える。
