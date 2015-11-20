# ここでも命令をくり返し実行してくれるreplicate関数を利用
res <- replicate(100000, mean(sample(1:6, 100, replace = TRUE)))

# シンプルなヒストグラム
hist(res)

# もう少し凝ったグラフを生成
library(ggplot2)

# サイコロ投げの結果データをグラフ作成用に少し手直し
saikoro <- data.frame(サイコロ = res)

# 実際に書いてみる
ggplot(saikoro, aes(x = サイコロ)) + geom_histogram(binwidth = .1, fill = "steelblue", colour = "black", alpha = 0.5) + xlab("期待値") + ylab("回数") + ggtitle("サイコロを100回振った期待値")