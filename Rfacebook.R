
#過程需要網頁認證
#可以參考以下去實作https://blog.gtwang.org/r/facebook-social-media-mining-with-r/
install.packages("Rfacebook")
install.packages("wordcloud2")
install.packages("wordcloud")
library(Rfacebook)
library(wordcloud)
library(wordcloud2)
#取得認證xx是個人資訊請去認證網頁索取
token<-fbOAuth(app_id ="xx",app_secret = "xx",extended_permissions = TRUE)
me <- getUsers("me",token=token)
me$name
#按讚粉絲專區的資訊
aa<- getLikes("me",token=token)
#看出所有按讚的地方fix()
fix(aa)
#141391055983739
fb_page<-getPage(page="141391055983739",token,since="2017-06-01",until="2017-08-30",n=30)
wordcloud(fb_page$message,fb_page$likes_count)
