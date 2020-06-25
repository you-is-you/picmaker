class ListOptionCreator

    def self.listmaker(test, user_name, now_url)
        lists = []
        themes = []
        if test.daily_change == "1"
            if user_name.present?
                @name = '<span class="font-weight-bold">' + user_name + '</span>'
                @twitter = test.basic_text.to_s
                test.basic_text = test.basic_text.gsub("[USER]", @name)
                @twitter = @twitter.gsub("[USER]", user_name)
                day_num = Time.now.wday
                name_num = @name.length + day_num
                if test.list1.present?
                    num = name_num % test.list1.split("\r\n").length 
                    if test.list_option1 == '0'
                        lists.push(test.list1.split("\r\n")[num])
                        test.basic_text = test.basic_text.gsub("[LIST1]", lists[0])
                        @twitter = @twitter.gsub("[LIST1]", lists[0])

                    elsif test.list_option1 == '1'
                        lists.push(test.list1.split("\r\n")[num])
                        img_file = "<img src=" + "#{lists[0]}" + ' alt="画像1" class="img-responsive  center-block h-50 w-50">'
                        test.basic_text = test.basic_text.gsub("[LIST1]", img_file)
                        @cite_img0 = lists[0]
                        @twitter = @twitter.gsub("[LIST1]", lists[0])
                    else
                        lists.push(test.list1.split("\r\n")[num])
                        movie_maker(test, "[LIST1]", lists[0][32..42])
                        @twitter = @twitter.gsub("[LIST1]", lists[0])
                    end
                end
                if test.list2.present?
                    num = name_num % test.list2.split("\r\n").length
                    if test.list_option2 == '0'
                        lists.push(test.list2.split("\r\n")[num])
                        test.basic_text = test.basic_text.gsub("[LIST2]", lists[1])
                        @twitter = @twitter.gsub("[LIST2]", lists[1])
                    elsif test.list_option2 == '1'
                        lists.push(test.list2.split("\r\n")[num])
                        img_file = "<img src=" + "#{lists[1]}" + ' alt="画像2" class="img-responsive  center-block h-50 w-50">'
                        test.basic_text = test.basic_text.gsub("[LIST2]", img_file)
                        @cite_img1 = lists[1]
                        @twitter = @twitter.gsub("[LIST2]", lists[1])
                    else
                        lists.push(test.list2.split("\r\n")[num])
                        movie_maker(test, "[LIST2]", lists[1][32..42])
                        @twitter = @twitter.gsub("[LIST2]", lists[1])
                    end
                end
                if test.list3.present?
                    num = name_num % test.list3.split("\r\n").length
                    if test.list_option3 == '0'
                        lists.push(test.list3.split("\r\n")[num])
                        test.basic_text = test.basic_text.gsub("[LIST3]", lists[2])
                        @twitter = @twitter.gsub("[LIST3]", lists[2])

                    elsif test.list_option3 == '1'
                        lists.push(test.list3.split("\r\n")[num])
                        img_file = "<img src=" + "#{lists[2]}" + ' alt="画像3" class="img-responsive  center-block h-50 w-50">'
                        test.basic_text = test.basic_text.gsub("[LIST3]", img_file)
                        @cite_img2 = lists[2]
                        @twitter = @twitter.gsub("[LIST3]", lists[2])

                    else
                        lists.push(test.list3.split("\r\n")[num])
                        movie_maker(test, "[LIST3]", lists[2][32..42])
                        @twitter = @twitter.gsub("[LIST3]", lists[2])
                    end
                end
                if test.list4.present?
                    num = name_num % test.list4.split("\r\n").length
                    if test.list_option4 == '0'
                        lists.push(test.list4.split("\r\n")[num])
                        test.basic_text = test.basic_text.gsub("[LIST4]", lists[3])
                        @twitter = @twitter.gsub("[LIST4]", lists[3])

                    elsif test.list_option4 == '1'
                        lists.push(test.list3.split("\r\n")[num])
                        img_file = "<img src=" + "#{lists[3]}" + ' alt="画像4" class="img-responsive  center-block h-50 w-50">'
                        test.basic_text = test.basic_text.gsub("[LIST4]", img_file)
                        @cite_img3 = lists[3]
                        @twitter = @twitter.gsub("[LIST4]", lists[3])

                    else
                        lists.push(test.list4.split("\r\n")[num])
                        movie_maker(test, "[LIST4]", lists[3][32..42])
                        @twitter = @twitter.gsub("[LIST4]", lists[3])
                    end
                end
                if test.list5.present?
                    num = name_num % test.list5.split("\r\n").length
                    if test.list_option5 == '0'
                        lists.push(test.list5.split("\r\n")[num])
                        test.basic_text = test.basic_text.gsub("[LIST5]", lists[4])
                        @twitter = @twitter.gsub("[LIST5]", lists[4])

                    elsif test.list_option5 == '1'
                        lists.push(test.list5.split("\r\n")[num])
                        img_file = "<img src=" + "#{lists[4]}" + ' alt="画像5" class="img-responsive  center-block h-50 w-50">'
                        test.basic_text = test.basic_text.gsub("[LIST5]", img_file)
                        @cite_img4 = lists[4]
                        @twitter = @twitter.gsub("[LIST5]", lists[4])

                    else
                        lists.push(test.list5.split("\r\n")[num])
                        movie_maker(test, "[LIST5]", lists[4][32..42])
                        @twitter = @twitter.gsub("[LIST5]", lists[4])
                    end
                end
                if test.list6.present?
                    num = name_num % test.list6.split("\r\n").length
                    if test.list_option6 == '0'
                        lists.push(test.list6.split("\r\n")[num])
                        test.basic_text = test.basic_text.gsub("[LIST6]", lists[5])
                        @twitter = @twitter.gsub("[LIST6]", lists[5])

                    elsif test.list_option6 == '1'
                        lists.push(test.list6.split("\r\n")[num])
                        img_file = "<img src=" + "#{lists[5]}" + ' alt="画像6" class="img-responsive  center-block h-50 w-50">'
                        test.basic_text = test.basic_text.gsub("[LIST6]", img_file)
                        @cite_img5 = lists[5]
                        @twitter = @twitter.gsub("[LIST6]", lists[5])

                    else
                        lists.push(test.list6.split("\r\n")[num])
                        movie_maker(test, "[LIST6]", lists[5][32..42])
                        @twitter = @twitter.gsub("[LIST6]", lists[5])
                    end
                end
                if test.list7.present?
                    num = name_num % test.list7.split("\r\n").length
                    if test.list_option7 == '0'
                        lists.push(test.list7.split("\r\n")[num])
                        test.basic_text = test.basic_text.gsub("[LIST7]", lists[6])
                        @twitter = @twitter.gsub("[LIST7]", lists[6])

                    elsif test.list_option7 == '1'
                        lists.push(test.list7.split("\r\n")[num])
                        img_file = "<img src=" + "#{lists[6]}" + ' alt="画像7" class="img-responsive  center-block h-50 w-50">'
                        test.basic_text = test.basic_text.gsub("[LIST7]", img_file)
                        @cite_img6 = lists[6]
                        @twitter = @twitter.gsub("[LIST7]", lists[6])

                    else
                        lists.push(test.list7.split("\r\n")[num])
                        movie_maker(test, "[LIST7]", lists[6][32..42])
                        @twitter = @twitter.gsub("[LIST7]", lists[6])
                    end
                end
                if test.list8.present?
                    num = name_num % test.list8.split("\r\n").length
                    if test.list_option8 == '0'
                        lists.push(test.list8.split("\r\n")[num])
                        test.basic_text = test.basic_text.gsub("[LIST8]", lists[7])
                        @twitter = @twitter.gsub("[LIST8]", lists[7])

                    elsif test.list_option8 == '1'
                        lists.push(test.list8.split("\r\n")[num])
                        img_file = "<img src=" + "#{lists[7]}" + ' alt="画像8" class="img-responsive  center-block h-50 w-50">'
                        test.basic_text = test.basic_text.gsub("[LIST8]", img_file)
                        @cite_img7 = lists[7]
                        @twitter = @twitter.gsub("[LIST8]", lists[7])

                    else
                        lists.push(test.list8.split("\r\n")[num])
                        movie_maker(test, "[LIST8]", lists[7][32..42])
                        @twitter = @twitter.gsub("[LIST8]", lists[7])
                    end
                end
                if test.list9.present?
                    num = name_num % test.list9.split("\r\n").length
                    if test.list_option9 == '0'
                        lists.push(test.list9.split("\r\n")[num])
                        test.basic_text = test.basic_text.gsub("[LIST9]", lists[8])
                        @twitter = @twitter.gsub("[LIST9]", lists[8])

                    elsif test.list_option9 == '1'
                        lists.push(test.list9.split("\r\n")[num])
                        img_file = "<img src=" + "#{lists[8]}" + ' alt="画像9" class="img-responsive  center-block h-50 w-50">'
                        test.basic_text = test.basic_text.gsub("[LIST9]", img_file)
                        @cite_img8 = lists[8]
                        @twitter = @twitter.gsub("[LIST9]", lists[8])

                    else
                        lists.push(test.list9.split("\r\n")[num])
                        movie_maker(test, "[LIST9]", lists[8][32..42])
                        @twitter = @twitter.gsub("[LIST9]", lists[8])
                    end
                end
                if test.list10.present?
                    num = name_num % test.list10.split("\r\n").length
                    if test.list_option10 == '0'
                        lists.push(test.list10.split("\r\n")[num])
                        test.basic_text = test.basic_text.gsub("[LIST10]", lists[9])
                        @twitter = @twitter.gsub("[LIST10]", lists[9])

                    elsif test.list_option10 == '1'
                        lists.push(test.list10.split("\r\n")[num])
                        img_file = "<img src=" + "#{lists[9]}" + ' alt="画像10" class="img-responsive  center-block h-50 w-50">'
                        test.basic_text = test.basic_text.gsub("[LIST10]", img_file)
                        @cite_img9 = lists[9]
                        @twitter = @twitter.gsub("[LIST10]", lists[9])

                    else
                        lists.push(test.list10.split("\r\n")[num])
                        movie_maker(test, "[LIST10]", lists[9][32..42])
                        @twitter = @twitter.gsub("[LIST10]", lists[9])
                    end
                end
                twitter_url_maker(@twitter, test.hash_tag, now_url)
            end
        else
            if user_name.present?
                @name = '<span class="font-weight-bold">' + user_name + '</span>'
                @twitter = test.basic_text.gsub("[USER]", user_name).to_s
                test.basic_text = test.basic_text.gsub("[USER]", @name)
                name_num = @name.length
                if test.list1.present?
                    num = name_num % test.list1.split("\r\n").length 
                    if test.list_option1 == '0'
                        lists.push(test.list1.split("\r\n")[num])
                        test.basic_text = test.basic_text.gsub("[LIST1]", lists[0])
                        @twitter = @twitter.gsub("[LIST1]", lists[0])
                    elsif test.list_option1 == '1'
                        lists.push(test.list1.split("\r\n")[num])
                        img_file = "<img src=" + "#{lists[0]}" + ' alt="画像1" class="img-responsive  center-block h-50 w-50">'
                        test.basic_text = test.basic_text.gsub("[LIST1]", img_file)
                        @cite_img0 = lists[0]
                        @twitter = @twitter.gsub("[LIST1]", lists[0])
                    else
                        lists.push(test.list1.split("\r\n")[num])
                        movie_maker(test, "[LIST1]", lists[0][32..42])
                        @twitter = @twitter.gsub("[LIST1]", lists[0])
                    end
                end
                if test.list2.present?
                    num = name_num % test.list2.split("\r\n").length
                    if test.list_option2 == '0'
                        lists.push(test.list2.split("\r\n")[num])
                        test.basic_text = test.basic_text.gsub("[LIST2]", lists[1])
                        @twitter = @twitter.gsub("[LIST2]", lists[1])

                    elsif test.list_option2 == '1'
                        lists.push(test.list2.split("\r\n")[num])
                        img_file = "<img src=" + "#{lists[1]}" + ' class="img-fluid" alt="画像2" class="img-responsive  center-block h-50 w-50">'
                        test.basic_text = test.basic_text.gsub("[LIST2]", img_file)
                        @cite_img1 = lists[1]
                        @twitter = @twitter.gsub("[LIST2]", lists[1])

                    else
                        lists.push(test.list2.split("\r\n")[num])
                        movie_maker(test, "[LIST2]", lists[1][32..42])
                        @twitter = @twitter.gsub("[LIST2]", lists[1])
                    end
                end
                if test.list3.present?
                    num = name_num % test.list3.split("\r\n").length
                    if test.list_option3 == '0'
                        lists.push(test.list3.split("\r\n")[num])
                        test.basic_text = test.basic_text.gsub("[LIST3]", lists[2])
                        @twitter = @twitter.gsub("[LIST3]", lists[2])

                    elsif test.list_option3 == '1'
                        lists.push(test.list3.split("\r\n")[num])
                        img_file = "<img src=" + "#{lists[2]}" + ' alt="画像3" class="img-responsive  center-block h-50 w-50">'
                        test.basic_text = test.basic_text.gsub("[LIST3]", img_file)
                        @cite_img2 = lists[2]
                        @twitter = @twitter.gsub("[LIST3]", lists[2])

                    else
                        lists.push(test.list3.split("\r\n")[num])
                        movie_maker(test, "[LIST3]", lists[2][32..42])
                        @twitter = @twitter.gsub("[LIST3]", lists[2])
                    end
                end
                if test.list4.present?
                    num = name_num % test.list4.split("\r\n").length
                    if test.list_option4 == '0'
                        lists.push(test.list4.split("\r\n")[num])
                        test.basic_text = test.basic_text.gsub("[LIST4]", lists[3])
                        @twitter = @twitter.gsub("[LIST4]", lists[3])

                    elsif test.list_option4 == '1'
                        lists.push(test.list3.split("\r\n")[num])
                        img_file = "<img src=" + "#{lists[3]}" + ' alt="画像4" class="img-responsive  center-block h-50 w-50">'
                        test.basic_text = test.basic_text.gsub("[LIST4]", img_file)
                        @cite_img3 = lists[3]
                        @twitter = @twitter.gsub("[LIST4]", lists[3])

                    else
                        lists.push(test.list4.split("\r\n")[num])
                        movie_maker(test, "[LIST4]", lists[3][32..42])
                        @twitter = @twitter.gsub("[LIST4]", lists[3])
                    end
                end
                if test.list5.present?
                    num = name_num % test.list5.split("\r\n").length
                    if test.list_option5 == '0'
                        lists.push(test.list5.split("\r\n")[num])
                        test.basic_text = test.basic_text.gsub("[LIST5]", lists[4])
                        @twitter = @twitter.gsub("[LIST5]", lists[4])

                    elsif test.list_option5 == '1'
                        lists.push(test.list5.split("\r\n")[num])
                        img_file = "<img src=" + "#{lists[4]}" + ' alt="画像5" class="img-responsive  center-block h-50 w-50">'
                        test.basic_text = test.basic_text.gsub("[LIST5]", img_file)
                        @cite_img4 = lists[4]
                        @twitter = @twitter.gsub("[LIST5]", lists[4])

                    else
                        lists.push(test.list5.split("\r\n")[num])
                        movie_maker(test, "[LIST5]", lists[4][32..42])
                        @twitter = @twitter.gsub("[LIST5]", lists[4])
                    end
                end
                if test.list6.present?
                    num = name_num % test.list6.split("\r\n").length
                    if test.list_option6 == '0'
                        lists.push(test.list6.split("\r\n")[num])
                        test.basic_text = test.basic_text.gsub("[LIST6]", lists[5])
                        @twitter = @twitter.gsub("[LIST6]", lists[5])

                    elsif test.list_option6 == '1'
                        lists.push(test.list6.split("\r\n")[num])
                        img_file = "<img src=" + "#{lists[5]}" + ' alt="画像6" class="img-responsive  center-block h-50 w-50">'
                        test.basic_text = test.basic_text.gsub("[LIST6]", img_file)
                        @cite_img5 = lists[5]
                        @twitter = @twitter.gsub("[LIST6]", lists[5])

                    else
                        lists.push(test.list6.split("\r\n")[num])
                        movie_maker(test, "[LIST6]", lists[5][32..42])
                        @twitter = @twitter.gsub("[LIST6]", lists[5])
                    end
                end
                if test.list7.present?
                    num = name_num % test.list7.split("\r\n").length
                    if test.list_option7 == '0'
                        lists.push(test.list7.split("\r\n")[num])
                        test.basic_text = test.basic_text.gsub("[LIST7]", lists[6])
                        @twitter = @twitter.gsub("[LIST7]", lists[6])

                    elsif test.list_option7 == '1'
                        lists.push(test.list7.split("\r\n")[num])
                        img_file = "<img src=" + "#{lists[6]}" + ' alt="画像7" class="img-responsive  center-block h-50 w-50">'
                        test.basic_text = test.basic_text.gsub("[LIST7]", img_file)
                        @cite_img6 = lists[6]
                        @twitter = @twitter.gsub("[LIST7]", lists[6])

                    else
                        lists.push(test.list7.split("\r\n")[num])
                        movie_maker(test, "[LIST7]", lists[6][32..42])
                        @twitter = @twitter.gsub("[LIST7]", lists[6])
                    end
                end
                if test.list8.present?
                    num = name_num % test.list8.split("\r\n").length
                    if test.list_option8 == '0'
                        lists.push(test.list8.split("\r\n")[num])
                        test.basic_text = test.basic_text.gsub("[LIST8]", lists[7])
                        @twitter = @twitter.gsub("[LIST8]", lists[7])

                    elsif test.list_option8 == '1'
                        lists.push(test.list8.split("\r\n")[num])
                        img_file = "<img src=" + "#{lists[7]}" + ' alt="画像8" class="img-responsive  center-block h-50 w-50">'
                        test.basic_text = test.basic_text.gsub("[LIST8]", img_file)
                        @cite_img7 = lists[7]
                        @twitter = @twitter.gsub("[LIST8]", lists[7])
                    else
                        lists.push(test.list8.split("\r\n")[num])
                        movie_maker(test, "[LIST8]", lists[7][32..42])
                        @twitter = @twitter.gsub("[LIST8]", lists[7])
                    end
                end
                if test.list9.present?
                    num = name_num % test.list9.split("\r\n").length
                    if test.list_option9 == '0'
                        lists.push(test.list9.split("\r\n")[num])
                        test.basic_text = test.basic_text.gsub("[LIST9]", lists[8])
                        @twitter = @twitter.gsub("[LIST9]", lists[8])

                    elsif test.list_option9 == '1'
                        lists.push(test.list9.split("\r\n")[num])
                        img_file = "<img src=" + "#{lists[8]}" + ' alt="画像9" class="img-responsive  center-block h-50 w-50">'
                        test.basic_text = test.basic_text.gsub("[LIST9]", img_file)
                        @cite_img8 = lists[8]
                        @twitter = @twitter.gsub("[LIST9]", lists[8])
                    else
                        lists.push(test.list9.split("\r\n")[num])
                        movie_maker(test, "[LIST9]", lists[8][32..42])
                        @twitter = @twitter.gsub("[LIST9]", lists[8])
                    end
                end
                if test.list10.present?
                    num = name_num % test.list10.split("\r\n").length
                    if test.list_option10 == '0'
                        lists.push(test.list10.split("\r\n")[num])
                        test.basic_text = test.basic_text.gsub("[LIST10]", lists[9])
                        @twitter = @twitter.gsub("[LIST10]", lists[9])

                    elsif test.list_option10 == '1'
                        lists.push(test.list10.split("\r\n")[num])
                        img_file = "<img src=" + "#{lists[9]}" + ' alt="画像10" class="img-responsive  center-block h-50 w-50">'
                        test.basic_text = test.basic_text.gsub("[LIST10]", img_file)
                        @cite_img9 = lists[9]
                        @twitter = @twitter.gsub("[LIST10]", lists[9])
                    else
                        lists.push(test.list10.split("\r\n")[num])
                        movie_maker(test, "[LIST10]", lists[9][32..42])
                        @twitter = @twitter.gsub("[LIST10]", lists[9])
                    end
                end
                twitter_url_maker(@twitter, test.hash_tag, now_url)
            end
        end
        @twitter_url
    end

    def self.movie_maker(test, replace_list, youtube_id)
        movie_file = "<iframe class=" + "embed-responsive-item" + 
        " src=" + "https://www.youtube.com/embed/" +  "#{youtube_id}" + " frameborder=" + "0" +
        " allow=" + "accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" + " allowfullscreen></iframe>" 
        test.basic_text = test.basic_text.gsub(replace_list, movie_file)
    end

    def self.twitter_url_maker(twitter, hash_tag, now_url)
        twitter = twitter.gsub("\r\n", "")
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