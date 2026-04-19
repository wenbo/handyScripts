Subversion の基礎勉強 〜Subversion によるバージョン管理を使う〜
https://tracpath.com/bootcamp/learning_subversion.html



Subversion の「trunk」「branches」「tags」の使い方
https://tracpath.com/bootcamp/learning_subversion_tutorial1.html
## trunk
trunk（トランク）は、開発の中心（メインライン）となるディレクトリで、ほとんどのファイルをここに格納します。通常は開発中の最新バージョンを格納しておきます。Gitでいう、masterブランチのようなものですね。
## branches
branches（ブランチ）は、トランクから分岐した別のツリーです。ブランチ（枝）という名前は、トランク（幹）から枝分かれすることからきています。トランクとは別に開発を進めたいときに、トランクからブランチを作ります。ブランチを作るということは、トランクディレクトリをブランチとして、「branches」ディレクトリ内にコピーすることです。別々のディレクトリとして存在しますので、もちろん履歴も別々のリビジョンを持つことになります。



EclipseでSVNを操作する(コードを修正してコミット)
https://itsakura.com/eclipse-svn-commit-mod

使用方法を知りたいときは 'svn help' と打ってください。

注意：如果修改了svn配置，需要重启svn服务，步骤如下：
# ps aux|grep svnserve
# kill -9 ID号
# svnserve -d -r /home/svn

man svnadmin
svnadmin help create
svn info : svnの情報表示
svn st
svn co {url}
svn ls
svn ls -v
svn ls {dir}
svn del {dir,file}
svn up

※ アップデートしないと、ログに反映されない
svn ci -m 'message' && svn up

ブランチの作成
svn copy {url}/branches/hoge -m 'message'






svn diff -r 123:124

svn update -r 788

svn status | grep '?' | sed 's/^.* /svn add /' | bash


① 状態の確認（svn st）
② ログの確認（svn log -l ～ -v）
③ コミット（svn ci -m "コメント"）
④ アップデート（svn up）

## eclipse
svn log
ファイル/フォルダーの変更履歴: パッケージ・エクスプローラーなどで対象を右クリック > Team > 履歴を表示 をクリックします。


## mac
brew install subversion
svn --version


### branch
$ svn mkdir file:///Users/bob/workspace/ruby-dev/kn_line/SVN/work/repos/project1/branches -m "branchesの作成"
Committing transaction...
リビジョン 5 をコミットしました。

$ svn copy file:///Users/bob/workspace/ruby-dev/kn_line/SVN/work/repos/project1/trunk file:///Users/bob/workspace/ruby-dev/kn_line/SVN/work/repos/project1/branches/new-branch  -m 新しいブランチの作成

Committing transaction...
リビジョン 6 をコミットしました

cd ..
svn checkout file:///Users/bob/workspace/ruby-dev/kn_line/SVN/work/repos/project1/branches/new-branch

svn info
