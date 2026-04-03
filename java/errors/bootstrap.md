EclipseでTomcatのサーバーを起動しようとしたときに、次のようなエラーが発生しました。

エラー: メイン・クラスorg.apache.catalina.startup.Bootstrapを検出およびロードできませんでした
原因: java.lang.ClassNotFoundException: org.apache.catalina.startup.Bootstrap

Bootstrapが見つからないらしいのですが、こんな時はJREのバージョンがおかしい可能性があります。

メニューのEclipse > Preferences > Server > Runtime Environments から、サーバーのRuntimeの設定をいじれます。

