<!-- このファイルは直接編集せずに src ディレクトリ内のファイルを編集し build.pl を実行してください。 -->
# Perl入学式
### 第1回 環境構築編

___
## 諸注意
- 会場について
    - 飲食・喫煙・トイレetc
- 写真撮影について
    - 写真撮影NGな方はお手数ですが申し出てください

___
## 紹介
- 講師・サポーター紹介

___
## 本日の内容
### Perl をはじめよう!
- 環境構築
- ターミナルとシェル入門
- Perl 入学式について
- Perl環境の構築
- plenv の導入
- Hello, World

___
## 皆さんで自己紹介

---
# OSについて
___
## OSとは?
- OSは, Operating System(オペレーティング･システム)の略です.
- 私達のパソコンには, 大抵の場合1つ以上のOSが搭載されていて, OSの上でブラウザなどのアプリケーションが動作しています.
- 代表的なOSとして, 次のようなものが存在します.
    - Windows
    - Mac OS X
    - Linux

___
## Perlに最適なOSは?
- Perlを利用したWebアプリケーションなどのプログラミングにチャレンジする方は, ｢Windows以外｣のOSを利用することを推奨します.
    - これは, ｢Windows特有のトラブルが多いこと｣, ｢WindowsでPerlを使っているユーザが少なく, トラブル発生時に対処出来る人が少ないこと｣が理由です.
- Perlだけでなく, PHPやRubyでもこの傾向があるように思います.

___
## Linuxか? Macか?
- Linuxの利点は, 基本的に無料で使えるという点です.
    - 初心者向けのUbuntu, よくサーバで利用されるCentOS, コアな人気を誇るGentooなど, 多くの種類(ディストリビューション)が存在します.
    - Windowsとの共存も可能なので, Windowsユーザの方はひとまずLinuxを使ってみるのがいいのではないでしょうか.

___
## Linuxか? Macか?
- 基本的にWindows製のソフトウェアはLinux上では動かないと思いましょう.
    - 特にOfficeが使えないのは(場合によっては)致命的となり得ます.
    - WindowsとLinuxを用途に応じて使い分ける必要があるでしょう.

___
## Linuxか? Macか?
- 一方, MacはMacBook AirやMacBook ProなどApple製のPCに搭載されています.
    - Linuxと同様, 基本的にWindow向けのソフトウェアはMac上では動きません.
    - ただし, Officeについては, MicrosoftがMac版を販売しているので利用することができます.
- その他, ソフトウェアによってはWindowsだけでなくLinuxやMacにも対応したものを配布している場合があります.

___
## Perl入学式では...
- Windowsユーザの方は...
    - USBメモリを利用して, Lubuntuの環境を構築します.
    - USBを利用すれば, どの環境でもLubuntuを利用することができます.
- Macユーザ, Linuxユーザの方は...
    - 基本的に, 既にお手持ちのPC/環境を利用して頂きます.
    - Macの場合, 後々必要になる可能性が高い｢Xcode｣及び｢Command Line Tools for Xcode｣の導入を行います.






---
# Xcodeの<br>インストール
<center>
〜Macユーザ向け〜
</center>

___
## Xcodeとは?
- Xcodeは, アップルが提供する統合開発環境です.
- Perlを開発する上で, 正確に言えばXcodeは必要ありません.
    - ですが, Perl入学式で利用する｢plenv｣を使ってPerlをインストールする場合, Xcodeからインストールできる｢Command Line Tools for Xcode｣が必要になります.
- ｢Xcode｣も｢Command Line Tools for Xcode｣も, 無料で利用することができます.

___
## Xcodeのインストール
- XcodeはApple Storeからインストールすることができます. 
    - Apple Storeから｢Xcode｣を検索し, インストールしましょう.
    - インストールには30分程時間がかかります.

<center>
![Apple Storeのアイコン](src/public/image/apple_store.png)
<br>
△Apple Storeのアイコン
</center>

___
## CLT for Xcodeのインストール
- 続いて, Command Line Tools for Xcodeをインストールします.
    - Qiitaの[MavericksでCommand Line Tools for Xcodeをインストールする](http://qiita.com/3yatsu/items/47470091277d46f3fde2)という記事を参考にして, XcodeからCommand Line Tools for Xcodeをインストールしましょう.
- なお, OSのバージョンがMavericksの場合, 次に紹介するターミナルからインストールする方法も利用できます. 

___
## ターミナルを使う方法
- Launchpadなどから｢ターミナル｣を選択し, 起動します.
    - 今後, 記述したプログラムを実行する作業などは全てターミナルから行います.
    - 頻繁に起動するため, Dockへ追加しておくことをおすすめします.

<center>
![ターミナルのアイコン](src/public/image/terminal.png)
<br>
△Ternimalのアイコン
</center>

___
## ターミナルを使う方法
    $ xcode-select --install

- ターミナルに上記のコマンドを打ち込み, Enterキーで入力します.

<center>
![CLT for Xcodeのインストール](src/public/image/clt_for_xcode.png)
<br>
△Command Line Tools for Xcodeを<br>インストールするコマンド
</center>

___
## ターミナルを使う方法
- コマンドを打ち込むとダイアログが表示されるので, あとはダイアログの指示に従ってインストールを進めて下さい.

<center>
![ダイアログ](src/public/image/clt_for_xcode_dialog.png)
</center>

___
## CLT for Xcodeのインストール
- 以上でXcodeとCommand Line Tools for Xcodeのインストールは終わりです.
    - お疲れ様でした!

---
# Lubuntu環境の構築
<center>
〜Windowsユーザ向け〜
</center>

___
## Lubuntuとは?
- Canonicalの支援で開発されている, Linuxディストリビューションの1つ, UbuntuをベースとしたOSです.
    - Ubuntuよりも比較的軽量で, スペックの低いマシンでも動作しやすい, という特徴があります.
- LubuntuやUbuntuは, 比較的初心者向けのディストリビューションと呼ばれています.
    - 国内外を問わず, 多くのユーザがUbuntuやLubuntuを利用しています.

___
## ISOの入手

- まず, いずれの場合でも必要になるLubuntuのISOデータを用意しましょう.
    - [http://www.ubuntulinux.jp/download/ja-remix](https://help.ubuntu.com/community/Lubuntu/GetLubuntu/LTS)
    - なお今回は, ｢Lubuntu 14.04.2｣を利用します.
    - 32bit/64bitはお使いのPCのCPUにあわせて選択して下さい.
- こちらのリンクから直接ダウンロードすることも可能です.
    - [32bit版ISOダウンロード](http://cdimage.ubuntu.com/lubuntu/releases/14.04/release/lubuntu-14.04.2-desktop-i386.iso)
    - [64bit版ISOダウンロード](http://cdimage.ubuntu.com/lubuntu/releases/14.04/release/lubuntu-14.04.2-desktop-amd64.iso)

___
## Lubuntuのインストール
- Lubuntuのインストール方法については, [こちら](https://github.com/perl-entrance-org/workshop-2015-01/blob/master/src/lubuntu_install_usb.md)の資料を参照して下さい.

---

___
# ターミナルとシェル入門

___
## CUI
- MacもLubuntuも, Windowsと同じくGUIで操作可能です.
- ですが, プログラミングをする上でCUIは避けられません.
    - CUI ... Character User Interface
    - 文字によって操作を行うインターフェイスのことを指します.
    - Windowsならば, コマンドプロンプトに該当します.

___
## CUI
- 基本的なCUIの操作を, 実際に操作しながら体験してみましょう.
    - 一部コマンドはLubuntuのみでしか利用できず, Macのターミナルでは使えませんのでご了承下さい.

___
## ターミナルとシェル
- ターミナルを開くと, シェルを使った操作が出来るようになります.
    - プログラムの起動や制御をCUIで行うプログラムのことをシェルと呼びます.

![シェル](src/public/image/shell.png)

___
## ターミナルの開き方(Lubuntu)

- 下部にあるバーの一番左側にあるボタンをクリックしてメニューを開き, ｢Accessories｣を選択してから｢LXTerminal｣をクリックして, 端末を起動します.

___
## ターミナルの開き方(Mac)

- Launchpadなどから｢ターミナル｣を選択し, 起動します.
    - 再掲ですが, ターミナルは頻繁に起動するため, Dockへ追加しておくことをおすすめします.

<center>
![ターミナルのアイコン](src/public/image/terminal.png)
<br>
△ターミナルのアイコン
</center>

___
## シェルで使えるコマンド集
- Perl入学式の中でもよく使うコマンドを紹介します.
    - シェルには, これから紹介する以外にも様々なコマンドがあります.
    - OSやシェルの種類によって使えるもの, 使えないものがありますが, 使いこなせば作業の負担を軽減することができるでしょう.

___
## コマンド集(ls)
    $ ls
    デスクトップ ダウンロード (以下略)

- `ls`は, 現在居るディレクトリにあるファイルを表示します.
- `ls -a`は, ファイルを**全て**表示します.

___
## コマンド集(pwd)
    $ pwd
    /home/username

- `pwd`は, 現在居るディレクトリを表示します.

___
## コマンド集(mkdir)
    $ mkdir sample
    $ ls
    sample デスクトップ ダウンロード (以下略)

- `mkdir DIRECTORY`は, `DIRECTORY`というディレクトリを作ります.

___
## コマンド集(cd)
    $ cd sample
    $ pwd
    /home/username/sample
    $ cd ..
    $ pwd
    /home/username

- `cd DIRECTORY`は, `DIRECTORY`に移動します.
    - 上のディレクトリは`..`で示します.

___
## コマンド集(rm)
    $ touch sample1 sample2
    $ ls
    sample1 sample2
    $ rm sample1
    $ ls
    sample2

- `rm [OPTION] FILE`は, `FILE`を削除します.
    - `target file`は半角スペースで区切ることで複数個指定することができます.
- ディレクトリを削除するときは, `[OPTION]`として`-r`を指定し, `rm -r FILE`で削除しなければなりません.
    - `r`は再帰(recursion)を意味します.

___
## コマンド集(cp)
    $ ls
    sample2
    $ cp sample2 sample1
    $ ls
    sample1 sample2

- `cp [OPTION] SOURCE DEST`は, `SOURCE`を`DEST`にコピーします.
- ディレクトリをコピーするときは, `[OPTION]`として`-r`を指定し, `cp -r SOURCE DEST`でコピーしなければなりません.

___
## コマンド集(mv)
    $ ls
    sample1 sample2
    $ mv sample1 sample_text
    $ ls
    sample_text sample2

- `mv [OPTION] SOURCE DEST`で, `SOURCE`を`DEST`に移動します.
    - ファイルやディレクトリの名前を変更する為にも使えます.

___
## コマンド集(nautilus)
    $ nautilus .

- `nautilus DIRECTORY`で, `DIRECTORY`をnautilusというファイルマネージャで開きます.
- 現在のディレクトリは`.`です.
- Macにはnautilusが搭載されていないので, 使えません.

___
## コマンド集(open)
    $ open .

- `open DIRECTORY`で, `DIRECTORY`をFinderというファイルマネージャで開きます.
    - `open`は対象となるファイルの種類によって動作が変わります.
    - 例えばディレクトリが対象ならば上記のようにFinderで表示, テキストならばテキストエディタで表示...  という動作をします.
- Lubuntuでは利用できません.

___
## 練習問題
- ホームディレクトリに`perl-entrance`というディレクトリを作ろう.
- 作った`perl-entrance`ディレクトリに移動しよう.
- カレントディレクトリ(`perl-entrance`)を, `nautilus`もしくは`open`を使って, ファイルマネージャで開いてみよう.

---
# エディタ入門

___
## エディタ
- コードを書く時に最も使う道具, それがエディタです.
- プログラミングに特化した様々なエディタが開発されていますが, Perl入学式ではその中でもSublime Text2を紹介します.
    - 特にこだわりのない方はSublime Text2を試してみましょう.
    - もちろん, EmacsやVimなど, 既に使い慣れているエディタがある方はそちらをお使いください.

___
## インストール for Lubuntu
- [http://www.sublimetext.com/](http://www.sublimetext.com/)へアクセス, サンプルムービー下部の｢Download｣ボタンからダウンロードします.
- ダウンロードしたファイルを右クリックして, `ここに展開する`をクリックします.
- `Sublime Text2`というフォルダができるので, その中の`sublime text`をクリックして起動します.

___
## インストール for Mac
- [http://www.sublimetext.com/](http://www.sublimetext.com/)へアクセス, サンプルムービー下部の｢Download｣ボタンからダウンロードします.
- ダウンロードした｢Sublime Text 2.x.x.dmg｣(xは任意の数字)をダブルクリックし, 開いたウィンドウにある｢Sublime Text 2.app｣を｢Application｣にドラッグすればインストールは完了です.

<center>
![Sublime Text2のインストール](src/public/image/install_sublime_for_mac1.png)
<br>
△｢Sublime Text 2.x.x.dmg｣ダブルクリック後の画面
</center>

___
## インストール for Mac
- Finderの｢アプリケーション｣から, ｢Sublime Text 2.app｣をダブルクリックして起動します.
- これから頻繁に利用するので, Dockに登録しておくことをおすすめします.

___
## 練習問題
- Sublime Text2など, 好きなエディタで`perl-entrance`ディレクトリに`profile.txt`というファイルを用意しましょう.
    - ファイルの中には, あなたの自己紹介を書きます.
- ターミナルを使って, `profile.txt`を`profile2.txt`という名前でコピーしよう.
- コピーした`profile2.txt`をターミナルから削除しよう.
