サンプルで、[abc74](https://atcoder.jp/contests/abc074/tasks)回のA, B問題を解いています。

## 問題を提出する

- Main.elmで`solveN`関数を作る
- `main`の`Platform.worker`のinitの中のsolveNを上記で作った関数に差し替える。

```
init = \inputs -> ( 0, submit <| solveN inputs
```

Macなら以下のコマンドでクリップボードに提出用のコードがコピーされる。

```
$ npm run submit
```

## 手元で実行してみる

- Main.elmで`solveN`関数を作る
- `main`の`Platform.worker`のinitの中のsolveNを上記で作った関数に差し替える。

```
init = \inputs -> ( 0, submit <| solveN inputs
```

問題に対応するinputファイルをディレクトリのルートに作っておく。

```input
2
9
3 6
```

以下のように実行すると、回答が出力される

```
$ npm run exec
> test@1.0.0 exec /Users/mirai.watanabe/Desktop/test
> npm run build && node dist/bundle.js < input


> test@1.0.0 build /Users/mirai.watanabe/Desktop/test
> node build.js

12
```