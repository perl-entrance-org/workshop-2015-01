workshop-2015-01
================

2015年度 第1回 環境構築編

## 資料の見方

`slide.md`が資料本体です。

資料は Markdown 記法で書かれていますので、テキストエディタだけでなく、Markdownエディタなどでもご覧いただけます。

また、`revealup`に対応していますので、スライドとして閲覧も可能です。

    $ revealup server slide.md --theme original

上記コマンドを入れてからブラウザで http://localhost:5000 にアクセスすると、スライド形式で資料を見ることができます。

動作しない場合は、以下の参考記事にインストール方法や使い方が書いてありますのでご覧ください。

### 参考記事
- [一瞬でクールなスライドがつくれる「App::revealup」をリリースしました - ゆーすけべー日記](http://yusuke.be/post/88914879289)
- [YAPC::Asiaでも「ちらほら」使われた「App::revealup」の進捗](http://yusuke.be/post/96568593109)

## 編集方法

`src`ディレクトリのなかに各章ごとのファイルがありますので、そちらを編集してください。

編集後には`build.pl`を実行して`slide.md`を生成してください。（Path::Tinyが必要です）

    $ perl build.pl

Perl入学式公式サイト： <http://www.perl-entrance.org>
