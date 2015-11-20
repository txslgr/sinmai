# シャープ記号(#)から右に書いた命令をRは無視します。これを利用してメモやコメントを#記号の横に書きます
kuji <- c("外れ", "1等")
res <- replicate(1000, sum(replicate(7, sample(kuji, 100, prob = c(99, 1), replace = TRUE)) == "1等"))

# シンプルなヒストグラム
hist(res, breaks == 0:18)

# もう少し凝ったグラフを生成するためにggplot2というグラフィックス作成パッケージをインストール(要ネット接続)
install.packages("ggplot2")
library(ggplot2) # 利用するために読み込む

# ggplot2パッケージでグラフを作成するために福引データを少し加工
resD <- as.data.frame(table(res))

# 実際に書いてみる
ggplot(resD, aes(y = Freq, x = res)) + geom_histogram(binwidth = 1, stat = "identity", fill = "steelblue") + xlab("期待値") + ylab("回数") + ggtitle("サイコロを100回振った期待値") + theme_bw(base_family = "HiraKakuProN-W3")