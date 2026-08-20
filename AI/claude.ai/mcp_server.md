https://zenn.dev/studio/articles/431afa748fbed1
Semantic Retrieval & Editing noetic agentの略で「Serena」です。
日本語訳すると「セマンティック検索・編集型の知的エージェント」みたいな感じです。
ライブラリの名前ってオシャレなの多いですよね〜
Serenaは、プロジェクトのコンテキストを効率的に管理し、Claude Codeの理解力を向上させるMCP（Model Context Protocol）サーバーです。
## serena
claude mcp add serena -- <serena-mcp-server> --context ide-assistant --project $(pwd)

## github
GitHub MCPでClaude Codeがもっと便利に！ターミナルから直接GitHub操作する方法
https://zenn.dev/gmomedia/articles/github-mcp-setup-guide


https://github.com/github/github-mcp-server/blob/main/docs/installation-guides/install-claude.md

## figma
Claude Code to Figmaとは？使い方・セットアップ手順から活用シーンまで解説
https://japan-ai.co.jp/media/7571/

Figma MCP を登録しました。設定は完了ですが、最後の認証はブラウザでの操作が必要で、これは私（ヘッドレス実行）側では完了できません。手順を案内します。

実施済み

- 公式リモート Figma MCP サーバーを追加（記事の方法 2）
  - コマンド: claude mcp add --scope user --transport http figma https://mcp.figma.com/mcp
  - 保存先: /Users/bob/.claude.json（ユーザースコープ＝全プロジェクトで有効）
- 現在の状態: figma … ! Needs authentication（サーバー登録済み・未認証）

次にやること（あなたの操作）

1. 認証（OAuth・ブラウザ）
  - この Claude Code のプロンプトで /mcp を実行
  - 一覧から figma を選び、Authenticate を実行
  - ブラウザが開くので Figma にログインし、アクセスを許可
  - 認証方式は OAuth のみ（パーソナルアクセストークンは非対応）
2. セッションの再読み込み
  - MCP のツールはセッション開始時に読み込まれるため、認証後に Claude Code を再起動（または新しいセッション）してください。今のこのセッションには figma ツールはまだ出てきません
3. 動作確認
  - claude mcp list で figma … ✔ Connected になっていれば OK
