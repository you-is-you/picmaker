class ShareButton
    def self.twitter_url_maker(twitter, hash_tag, now_url)
        # twitter = twitter.gsub("\r\n", "") 
        @twitter_url = URI.encode(
            "https://twitter.com/intent/tweet" +
            "?related=commentmakernet" +
            "&text=" + twitter + "\r\n" + hash_tag + " #こめんとメーカー" +
            "&url=" + now_url +
            "&original_referer=" + now_url
        )
    end

    def self.follow_url_maker(now_url)
    URI.encode(
        "https://twitter.com/intent/follow" +
        "?original_referer=" + now_url +
        "&screen_name=commentmakernet"     
    )
    end

end