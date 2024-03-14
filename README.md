# pandoc-include

wikilink形式で記述するとそのMarkdownファイルを埋め込めるPandocフィルターです。

`[[ファイル名.md]]`とだけ記述した段落の部分に、`ファイル名.md`を埋め込めます。
なお、拡張子は省略できます。

## 使い方

このリポジトリをクローンする、もしくは、`pandoc-include.lua`をダウンロードします。
Pandocを使用するときに`--lua-filter pandoc-include.lua`を指定します。