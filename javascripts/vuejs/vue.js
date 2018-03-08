vue transistion

Vue.component(tagName, options)


new VueRouter
router.push(location, onComplete?, onAbort?)

https://router.vuejs.org/ja/essentials/named-views.html
1 つの view は 1 つのコンポーネントを使ってレンダリングされます。したがって、同じルートに対する複数の view には複数のコンポーネントが必須になります。

Vue template components


router.start(App, 'body')


<input v-model="something">
は、以下の糖衣構文です:
<input
  v-bind:value="something"
    v-on:input="something = $event.target.value">
