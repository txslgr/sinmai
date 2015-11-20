install.packages("ggplot2")        # パッケージのインストール
library(ggplot2)        # パッケージを利用するために読み込む

# 以下でプロットを実際に作成
ggplot(breads, aes(x = weight)) + geom_histogram(binwidth = 10, fill = "steelblue", colour = "black", alpha = 0.5) + xlab("食パンの重さ") + ylab("個数") + ggtitle("食パンのヒストグラム") + theme_bw(base_family = "HiraKakuProN-W3")