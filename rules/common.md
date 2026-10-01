# 共通規則

環境を問わず読み込む規則。

- 公開されている GitHub リポジトリ上のアイテム（コミット、Issue、PR、コメント、レビューなど）に、プライベートな情報を書かない。Claude のセッションやアーティファクトの URL もこれに含む。
  - ツールが自動で付け足す場合も同じ。作成・編集した直後に本文を読み直し、該当する箇所を削除する。マージ前にも、コミットメッセージと PR の本文を再確認する。
  - Claude Code の署名として残してよいのは、コミットメッセージの `Co-Authored-By: Claude <model> <noreply@anthropic.com>` と、PR などの本文の `🤖 Generated with [Claude Code](https://claude.com/claude-code)` の 2 つだけ。
