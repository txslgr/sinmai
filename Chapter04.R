# 桜田さんから預かったデータを、天羽さんが整理した結果からスタート
menus <- read.csv(file.choose(), stringsAsFactors = FALSE, colClasses = c("factor", "Date", "numeric"))
# Chapter03/menus.csvを選択する
# 3列あるデータが、それぞれ性質がちがう。品目はカテゴリであり、日付は日付型データ、売上は数値である。読み込む際にこれを指定している（読み込んだ後で設定することもできる）

# データ操作の準備
library(dplyr)

# 列名を確認
menus %>% names # names(menus) に同じ

# 冒頭部分を確認
menus %>% head # head(menus) に同じ

# Code 04-01 # 時系列プロットの作成準備

library(ggplot2)

# おにぎりの売上を抽出して
onigiri <- menus %>% filter(品目 == "おにぎり")
# 時系列グラフ（scale_x_dateで指定）
ggplot(onigiri, aes(日付, 売上)) + geom_line() + scale_x_date() + ggtitle("おにぎりの売上") + theme_bw(base_family = "HiraKakuPro-W3")
