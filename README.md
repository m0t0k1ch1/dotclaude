# .claude

Claude Code で使う規則と設定。各環境では、必要なファイルを `~/.claude/` 配下から参照して使う。

## 使い方

### ローカル

リポジトリのルートで次を実行する。

```bash
make link
```

Claude Code は、`/model` や `/theme` などの操作のたびに `~/.claude/settings.json` を書き換える。このとき、上記セットアップで張ったシンボリックリンクはそのまま残り、変更はリポジトリ側の `settings/local.json` に書き込まれる。

### クラウドセッション

クラウド環境の **セットアップスクリプト** に次を設定する（環境の設定は、claude.ai/code のメッセージ欄の上にある環境名を選ぶと開ける）。クラウドセッションの起動時には、その環境とこのリポジトリを選ぶ。

```bash
#!/bin/bash
set -euo pipefail

mkdir -p ~/.claude/rules
ln -sf /home/user/dotclaude/settings/cloud.json ~/.claude/settings.json
ln -sf /home/user/dotclaude/rules/common.md ~/.claude/rules/common.md
```

## 保守

このリポジトリを更新するときの決まり。

- 文中の用語はカタカナで書く。英語のまま書くのは、固有名詞（Claude Code、Git、GitHub など）、略語（MCP、PR、URL など）、コードや識別子（バッククォートで囲む）、訳語もカタカナ表記も定着していない専門用語（例：frontmatter）に限る。略語が定着している用語は略語を使う（Pull Request ではなく PR）。既に記載のある用語は、その表記に揃える。
- 文章は、多少冗長になっても、初めて読む人が一読で誤解なく意味を取れるように書く。短く書くことより、意味が一通りにしか読めないことを優先する。主語や目的語、「〜する」「〜しない」といった述語を省略しない。「それ」「これ」などの指示語は、何を指すかが直前の文から明らかな場合に限って使う。体言止め、名詞の羅列、矢印（→）などの記号で文の代わりをしない。例：「PR 作成後、本文確認」ではなく「PR を作成した直後に、本文を読み直す」と書く。
- 設定ファイル（`settings/` 配下の JSON）のキーは、アルファベット順に並べる。Claude Code は、`/model` や `/theme` などの操作のたびに `settings/local.json` を書き戻すが、そのときキーの順序は保たれない。コミットする前に、アルファベット順に並べ直す。
