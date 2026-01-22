npm install -g @anthropic-ai/claude-code
npm install -g @anthropic-ai/claude-code
npm update -g @anthropic-ai/claude-code



which claude


うまくいかない場合は、一度きれいにアンインストールしてから、もう一度最新版をインストールし直す、という方法が確実なようです。

# 1. 現在のインストールを削除
npm uninstall -g @anthropic-ai/claude-code

# 2. 最新版を再インストール
npm install -g @anthropic-ai/claude-code

# 3. 念のためバージョン確認
claude --version


curl -fsSL https://claude.ai/install.sh | bash

~/.local/bin/claude
