# replicate関数に10万回、サイコロを100個(回)振る実験を行わせ、その結果をresという名前で保存する
res <- replicate(100000, mean(sample(1:6, 100, replace = TRUE)))

# シンプルなヒストグラム
hist(res)

# もう少し凝ったグラフを作成
library(ggplot2)
saikoro <- data.frame(サイコロ = res)
head(saikoro)
ggplot(saikoro, aes(x = サイコロ)) + geom_histogram(aes(y = ..density..), binwidth = .1, fill = "steelblue", colour = "black", alpha = 0.5) + xlab("期待値") + ylab("") + ggtitle("サイコロの平均値の平均値") + theme_bw(base_family = "HiraKakuProN-W3")