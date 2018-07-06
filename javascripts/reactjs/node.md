$ create-react-app my-app
- React コンポーネントには大きく分けて 2 つの種類があります。関数定義によって作成する Functional Component(ファンクショナルコンポーネント)とクラス定義によって作成する Class Component(クラスコンポーネント)です。
-  React コンポーネントを一般的なクラスだとすれば、React エレメントはイ ンスタンスに相当する概念といえます。
- React エレメントも通常の値と同じように変数に格納することができます。JSX での扱い方 も通常の値と全く同じです。
- React コンポーネントは単一の親からなる要素しか表現できません。
- Fragment コンポーネントは React が提供する特殊なコンポーネントで、HTML としての要 素 を 持 ち ま せ ん 。
- React コンポーネントは親コンポーネントから子コンポーネントに任意の名前 で任意の値を渡すことができます。
- コンポーネントを定義する関数の引数に props が渡されています。関数の引数に props と いう名前を付けているだけなので、この場合実際にはどんな変数名を付けても良いのですが、 props と名付けるのが一般的です。
- props には文字列、数値、配列、オブジェクト、関数など任意の値を渡すことができます。ま た、変数のまま渡すこともできます。原則として { } で囲うことで値を渡します。例外的に文字 列だけクオートを使うことができます。
- 特別な props として children というものがあります。React コンポーネントの子要素が children として渡されてきます。


### keyword
react-redux react-router-dom react-router-redux redux-thunk react-test-renderer
actions components containers reducers
mapDispatchToProps BrowserRouter
