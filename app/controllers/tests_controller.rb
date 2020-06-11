class TestsController < ApplicationController
  before_action :set_test, only: [:show, :edit, :update, :destroy, :list]
  PER_PAGE = 5

  # GET /tests
  def index
    @tests = Test.query limit: PER_PAGE, last_title: params[:last_title]
  end

  # GET /tests/1
  def show
    @follow_url = URI.encode(
        "https://twitter.com/intent/follow" +
        "?original_referer=" + request.url +
        "&screen_name=commentmakernet"     
    )
    @tests = Test.query limit: PER_PAGE, last_title: params[:last_title]
    @test = Test.find params[:id]
    lists = []
    themes = []
    if @test.daily_change == "1"
        @daily_change = "日替わり" 
        if params[:user_name].present?
            @name = '<span class="font-weight-bold">' + params[:user_name] + '</span>'
            @twitter = @test.basic_text.to_s
            @test.basic_text = @test.basic_text.gsub("[USER]", @name)
            @twitter = @twitter.gsub("[USER]", params[:user_name])
            day_num = Time.now.wday
            name_num = @name.length + day_num
            if @test.list1.present?
                num = name_num % @test.list1.split("\r\n").length 
                if @test.list_option1 == '0'
                    lists.push(@test.list1.split("\r\n")[num])
                    @test.basic_text = @test.basic_text.gsub("[LIST1]", lists[0])
                    @twitter = @twitter.gsub("[LIST1]", lists[0])

                elsif @test.list_option1 == '1'
                    lists.push(@test.list1.split("\r\n")[num])
                    img_file = "<img src=" + "#{lists[0]}" + ' alt="画像1">'
                    @test.basic_text = @test.basic_text.gsub("[LIST1]", img_file)
                    @cite_img0 = lists[0]
                    @twitter = @twitter.gsub("[LIST1]", lists[0])
                else
                    lists.push(@test.list1.split("\r\n")[num])
                    youtube_set(0, "[LIST1]")
                    # @test.basic_text = @test.basic_text.gsub("[LIST1]", lists[0])
                    @twitter = @twitter.gsub("[LIST1]", lists[0])
                end
            end
            if @test.list2.present?
                num = name_num % @test.list2.split("\r\n").length
                if @test.list_option2 == '0'
                    lists.push(@test.list2.split("\r\n")[num])
                    @test.basic_text = @test.basic_text.gsub("[LIST2]", lists[1])
                    @twitter = @twitter.gsub("[LIST2]", lists[1])
                elsif @test.list_option2 == '1'
                    lists.push(@test.list2.split("\r\n")[num])
                    img_file = "<img src=" + "#{lists[1]}" + ' alt="画像2">'
                    @test.basic_text = @test.basic_text.gsub("[LIST2]", img_file)
                    @cite_img1 = lists[1]
                    @twitter = @twitter.gsub("[LIST2]", lists[1])
                else
                    lists.push(@test.list2.split("\r\n")[num])
                    @test.basic_text = @test.basic_text.gsub("[LIST2]", lists[1])
                    @twitter = @twitter.gsub("[LIST2]", lists[1])
                end
            end
            if @test.list3.present?
                num = name_num % @test.list3.split("\r\n").length
                if @test.list_option3 == '0'
                    lists.push(@test.list3.split("\r\n")[num])
                    @test.basic_text = @test.basic_text.gsub("[LIST3]", lists[2])
                    @twitter = @twitter.gsub("[LIST3]", lists[2])

                elsif @test.list_option3 == '1'
                    lists.push(@test.list3.split("\r\n")[num])
                    img_file = "<img src=" + "#{lists[2]}" + ' alt="画像3">'
                    @test.basic_text = @test.basic_text.gsub("[LIST3]", img_file)
                    @cite_img2 = lists[2]
                    @twitter = @twitter.gsub("[LIST3]", lists[2])

                else
                    lists.push(@test.list3.split("\r\n")[num])
                    @test.basic_text = @test.basic_text.gsub("[LIST3]", lists[2])
                    @twitter = @twitter.gsub("[LIST3]", lists[2])
                end
            end
            if @test.list4.present?
                num = name_num % @test.list4.split("\r\n").length
                if @test.list_option4 == '0'
                    lists.push(@test.list4.split("\r\n")[num])
                    @test.basic_text = @test.basic_text.gsub("[LIST4]", lists[3])
                    @twitter = @twitter.gsub("[LIST4]", lists[3])

                elsif @test.list_option4 == '1'
                    lists.push(@test.list3.split("\r\n")[num])
                    img_file = "<img src=" + "#{lists[3]}" + ' alt="画像4">'
                    @test.basic_text = @test.basic_text.gsub("[LIST4]", img_file)
                    @cite_img3 = lists[3]
                    @twitter = @twitter.gsub("[LIST4]", lists[3])

                else
                    lists.push(@test.list4.split("\r\n")[num])
                    @test.basic_text = @test.basic_text.gsub("[LIST4]", lists[3])
                    @twitter = @twitter.gsub("[LIST4]", lists[3])
                end
            end
            if @test.list5.present?
                num = name_num % @test.list5.split("\r\n").length
                if @test.list_option5 == '0'
                    lists.push(@test.list5.split("\r\n")[num])
                    @test.basic_text = @test.basic_text.gsub("[LIST5]", lists[4])
                    @twitter = @twitter.gsub("[LIST5]", lists[4])

                elsif @test.list_option5 == '1'
                    lists.push(@test.list5.split("\r\n")[num])
                    img_file = "<img src=" + "#{lists[4]}" + ' alt="画像5">'
                    @test.basic_text = @test.basic_text.gsub("[LIST5]", img_file)
                    @cite_img4 = lists[4]
                    @twitter = @twitter.gsub("[LIST5]", lists[4])

                else
                    lists.push(@test.list5.split("\r\n")[num])
                    @test.basic_text = @test.basic_text.gsub("[LIST5]", lists[4])
                    @twitter = @twitter.gsub("[LIST5]", lists[4])
                end
            end
            if @test.list6.present?
                num = name_num % @test.list6.split("\r\n").length
                if @test.list_option6 == '0'
                    lists.push(@test.list6.split("\r\n")[num])
                    @test.basic_text = @test.basic_text.gsub("[LIST6]", lists[5])
                    @twitter = @twitter.gsub("[LIST6]", lists[5])

                elsif @test.list_option6 == '1'
                    lists.push(@test.list6.split("\r\n")[num])
                    img_file = "<img src=" + "#{lists[5]}" + ' alt="画像6">'
                    @test.basic_text = @test.basic_text.gsub("[LIST6]", img_file)
                    @cite_img5 = lists[5]
                    @twitter = @twitter.gsub("[LIST6]", lists[5])

                else
                    lists.push(@test.list6.split("\r\n")[num])
                    @test.basic_text = @test.basic_text.gsub("[LIST6]", lists[5])
                    @twitter = @twitter.gsub("[LIST6]", lists[5])
                end
            end
            if @test.list7.present?
                num = name_num % @test.list7.split("\r\n").length
                if @test.list_option7 == '0'
                    lists.push(@test.list7.split("\r\n")[num])
                    @test.basic_text = @test.basic_text.gsub("[LIST7]", lists[6])
                    @twitter = @twitter.gsub("[LIST7]", lists[6])

                elsif @test.list_option7 == '1'
                    lists.push(@test.list7.split("\r\n")[num])
                    img_file = "<img src=" + "#{lists[6]}" + ' alt="画像7">'
                    @test.basic_text = @test.basic_text.gsub("[LIST7]", img_file)
                    @cite_img6 = lists[6]
                    @twitter = @twitter.gsub("[LIST7]", lists[6])

                else
                    lists.push(@test.list7.split("\r\n")[num])
                    @test.basic_text = @test.basic_text.gsub("[LIST7]", lists[6])
                    @twitter = @twitter.gsub("[LIST7]", lists[6])
                end
            end
            if @test.list8.present?
                num = name_num % @test.list8.split("\r\n").length
                if @test.list_option8 == '0'
                    lists.push(@test.list8.split("\r\n")[num])
                    @test.basic_text = @test.basic_text.gsub("[LIST8]", lists[7])
                    @twitter = @twitter.gsub("[LIST8]", lists[7])

                elsif @test.list_option8 == '1'
                    lists.push(@test.list8.split("\r\n")[num])
                    img_file = "<img src=" + "#{lists[7]}" + ' alt="画像8">'
                    @test.basic_text = @test.basic_text.gsub("[LIST8]", img_file)
                    @cite_img7 = lists[7]
                    @twitter = @twitter.gsub("[LIST8]", lists[7])

                else
                    lists.push(@test.list8.split("\r\n")[num])
                    @test.basic_text = @test.basic_text.gsub("[LIST8]", lists[7])
                    @twitter = @twitter.gsub("[LIST8]", lists[7])
                end
            end
            if @test.list9.present?
                num = name_num % @test.list9.split("\r\n").length
                if @test.list_option9 == '0'
                    lists.push(@test.list9.split("\r\n")[num])
                    @test.basic_text = @test.basic_text.gsub("[LIST9]", lists[8])
                    @twitter = @twitter.gsub("[LIST9]", lists[8])

                elsif @test.list_option9 == '1'
                    lists.push(@test.list9.split("\r\n")[num])
                    img_file = "<img src=" + "#{lists[8]}" + ' alt="画像9">'
                    @test.basic_text = @test.basic_text.gsub("[LIST9]", img_file)
                    @cite_img8 = lists[8]
                    @twitter = @twitter.gsub("[LIST9]", lists[8])

                else
                    lists.push(@test.list9.split("\r\n")[num])
                    @test.basic_text = @test.basic_text.gsub("[LIST9]", lists[8])
                    @twitter = @twitter.gsub("[LIST9]", lists[8])
                end
            end
            if @test.list10.present?
                num = name_num % @test.list10.split("\r\n").length
                if @test.list_option1 == '0'
                    lists.push(@test.list10.split("\r\n")[num])
                    @test.basic_text = @test.basic_text.gsub("[LIST10]", lists[9])
                    @twitter = @twitter.gsub("[LIST10]", lists[9])

                elsif @test.list_option1 == '1'
                    lists.push(@test.list10.split("\r\n")[num])
                    img_file = "<img src=" + "#{lists[9]}" + ' alt="画像10">'
                    @test.basic_text = @test.basic_text.gsub("[LIST10]", img_file)
                    @cite_img9 = lists[9]
                    @twitter = @twitter.gsub("[LIST10]", lists[9])

                else
                    lists.push(@test.list10.split("\r\n")[num])
                    @test.basic_text = @test.basic_text.gsub("[LIST10]", lists[9])
                    @twitter = @twitter.gsub("[LIST10]", lists[9])
                end
            end
            @twitter = @twitter.gsub("\r\n", "")
            @twitter_url = URI.encode(
                "https://twitter.com/intent/tweet" +
                "?related=" + commentmakernet +
                "&text=" + @twitter.to_s +  @test.hash_tag +
                "&url=" + request.url +
                "&original_referer=" + request.url
            )
        end
    else
        if params[:user_name].present?
            @name = '<span class="font-weight-bold">' + params[:user_name] + '</span>'
            @twitter = @test.basic_text.to_s
            @test.basic_text = @test.basic_text.gsub("[USER]", @name)
            @twitter = @twitter.gsub("[USER]", params[:user_name])
            name_num = @name.length
            if @test.list1.present?
                num = name_num % @test.list1.split("\r\n").length 
                if @test.list_option1 == '0'
                    lists.push(@test.list1.split("\r\n")[num])
                    @test.basic_text = @test.basic_text.gsub("[LIST1]", lists[0])
                    @twitter = @twitter.gsub("[LIST1]", lists[0])

                elsif @test.list_option1 == '1'
                    lists.push(@test.list1.split("\r\n")[num])
                    img_file = "<img src=" + "#{lists[0]}" + ' alt="画像1">'
                    @test.basic_text = @test.basic_text.gsub("[LIST1]", img_file)
                    @cite_img0 = lists[0]
                    @twitter = @twitter.gsub("[LIST1]", lists[0])

                else
                    lists.push(@test.list1.split("\r\n")[num])
                    movie_file = "<iframe class=" + "embed-responsive-item" + 
                    " src=" + "https://www.youtube.com/embed/" +  "#{lists[0][32..42]}" + " frameborder=" + "0" +
                    " allow=" + "accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" + " allowfullscreen></iframe>" 
                    @test.basic_text = @test.basic_text.gsub("[LIST1]", movie_file)
                    @twitter = @twitter.gsub("[LIST1]", lists[0])
                end
            end
            if @test.list2.present?
                num = name_num % @test.list2.split("\r\n").length
                if @test.list_option2 == '0'
                    lists.push(@test.list2.split("\r\n")[num])
                    @test.basic_text = @test.basic_text.gsub("[LIST2]", lists[1])
                    @twitter = @twitter.gsub("[LIST2]", lists[1])

                elsif @test.list_option2 == '1'
                    lists.push(@test.list2.split("\r\n")[num])
                    img_file = "<img src=" + "#{lists[1]}" + ' class="img-fluid" alt="画像2">'
                    @test.basic_text = @test.basic_text.gsub("[LIST2]", img_file)
                    @cite_img1 = lists[1]
                    @twitter = @twitter.gsub("[LIST2]", lists[1])

                else
                    lists.push(@test.list2.split("\r\n")[num])
                    movie_file = "<iframe class=" + "embed-responsive-item" + 
                    " src=" + "https://www.youtube.com/embed/" +  "#{lists[1][32..42]}" + " frameborder=" + "0" +
                    " allow=" + "accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" + " allowfullscreen></iframe>" 
                    @test.basic_text = @test.basic_text.gsub("[LIST2]", movie_file)
                    @twitter = @twitter.gsub("[LIST2]", lists[1])
                end
            end
            if @test.list3.present?
                num = name_num % @test.list3.split("\r\n").length
                if @test.list_option3 == '0'
                    lists.push(@test.list3.split("\r\n")[num])
                    @test.basic_text = @test.basic_text.gsub("[LIST3]", lists[2])
                    @twitter = @twitter.gsub("[LIST3]", lists[2])

                elsif @test.list_option3 == '1'
                    lists.push(@test.list3.split("\r\n")[num])
                    img_file = "<img src=" + "#{lists[2]}" + ' alt="画像3">'
                    @test.basic_text = @test.basic_text.gsub("[LIST3]", img_file)
                    @cite_img2 = lists[2]
                    @twitter = @twitter.gsub("[LIST3]", lists[2])

                else
                    lists.push(@test.list3.split("\r\n")[num])
                    movie_file = "<iframe class=" + "embed-responsive-item" + 
                    " src=" + "https://www.youtube.com/embed/" +  "#{lists[2][32..42]}" + " frameborder=" + "0" +
                    " allow=" + "accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" + " allowfullscreen></iframe>" 
                    @test.basic_text = @test.basic_text.gsub("[LIST3]", movie_file)
                    @twitter = @twitter.gsub("[LIST3]", lists[2])
                end
            end
            if @test.list4.present?
                num = name_num % @test.list4.split("\r\n").length
                if @test.list_option4 == '0'
                    lists.push(@test.list4.split("\r\n")[num])
                    @test.basic_text = @test.basic_text.gsub("[LIST4]", lists[3])
                    @twitter = @twitter.gsub("[LIST4]", lists[3])

                elsif @test.list_option4 == '1'
                    lists.push(@test.list3.split("\r\n")[num])
                    img_file = "<img src=" + "#{lists[3]}" + ' alt="画像4">'
                    @test.basic_text = @test.basic_text.gsub("[LIST4]", img_file)
                    @cite_img3 = lists[3]
                    @twitter = @twitter.gsub("[LIST4]", lists[3])

                else
                    lists.push(@test.list4.split("\r\n")[num])
                    movie_file = "<iframe class=" + "embed-responsive-item" + 
                    " src=" + "https://www.youtube.com/embed/" +  "#{lists[3][32..42]}" + " frameborder=" + "0" +
                    " allow=" + "accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" + " allowfullscreen></iframe>" 
                    @test.basic_text = @test.basic_text.gsub("[LIST4]", movie_file)
                    @twitter = @twitter.gsub("[LIST4]", lists[3])
                end
            end
            if @test.list5.present?
                num = name_num % @test.list5.split("\r\n").length
                if @test.list_option5 == '0'
                    lists.push(@test.list5.split("\r\n")[num])
                    @test.basic_text = @test.basic_text.gsub("[LIST5]", lists[4])
                    @twitter = @twitter.gsub("[LIST5]", lists[4])

                elsif @test.list_option5 == '1'
                    lists.push(@test.list5.split("\r\n")[num])
                    img_file = "<img src=" + "#{lists[4]}" + ' alt="画像5">'
                    @test.basic_text = @test.basic_text.gsub("[LIST5]", img_file)
                    @cite_img4 = lists[4]
                    @twitter = @twitter.gsub("[LIST5]", lists[4])

                else
                    lists.push(@test.list5.split("\r\n")[num])
                    movie_file = "<iframe class=" + "embed-responsive-item" + 
                    " src=" + "https://www.youtube.com/embed/" +  "#{lists[4][32..42]}" + " frameborder=" + "0" +
                    " allow=" + "accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" + " allowfullscreen></iframe>" 
                    @test.basic_text = @test.basic_text.gsub("[LIST5]", movie_file)
                    @twitter = @twitter.gsub("[LIST5]", lists[4])
                end
            end
            if @test.list6.present?
                num = name_num % @test.list6.split("\r\n").length
                if @test.list_option6 == '0'
                    lists.push(@test.list6.split("\r\n")[num])
                    @test.basic_text = @test.basic_text.gsub("[LIST6]", lists[5])
                    @twitter = @twitter.gsub("[LIST6]", lists[5])

                elsif @test.list_option6 == '1'
                    lists.push(@test.list6.split("\r\n")[num])
                    img_file = "<img src=" + "#{lists[5]}" + ' alt="画像6">'
                    @test.basic_text = @test.basic_text.gsub("[LIST6]", img_file)
                    @cite_img5 = lists[5]
                    @twitter = @twitter.gsub("[LIST6]", lists[5])

                else
                    lists.push(@test.list6.split("\r\n")[num])
                    movie_file = "<iframe class=" + "embed-responsive-item" + 
                    " src=" + "https://www.youtube.com/embed/" +  "#{lists[5][32..42]}" + " frameborder=" + "0" +
                    " allow=" + "accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" + " allowfullscreen></iframe>" 
                    @test.basic_text = @test.basic_text.gsub("[LIST6]", movie_file)
                    @twitter = @twitter.gsub("[LIST6]", lists[5])
                end
            end
            if @test.list7.present?
                num = name_num % @test.list7.split("\r\n").length
                if @test.list_option7 == '0'
                    lists.push(@test.list7.split("\r\n")[num])
                    @test.basic_text = @test.basic_text.gsub("[LIST7]", lists[6])
                    @twitter = @twitter.gsub("[LIST7]", lists[6])

                elsif @test.list_option7 == '1'
                    lists.push(@test.list7.split("\r\n")[num])
                    img_file = "<img src=" + "#{lists[6]}" + ' alt="画像7">'
                    @test.basic_text = @test.basic_text.gsub("[LIST7]", img_file)
                    @cite_img6 = lists[6]
                    @twitter = @twitter.gsub("[LIST7]", lists[6])

                else
                    lists.push(@test.list7.split("\r\n")[num])
                    movie_file = "<iframe class=" + "embed-responsive-item" + 
                    " src=" + "https://www.youtube.com/embed/" +  "#{lists[6][32..42]}" + " frameborder=" + "0" +
                    " allow=" + "accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" + " allowfullscreen></iframe>" 
                    @test.basic_text = @test.basic_text.gsub("[LIST7]", movie_file)
                    @twitter = @twitter.gsub("[LIST7]", lists[6])
                end
            end
            if @test.list8.present?
                num = name_num % @test.list8.split("\r\n").length
                if @test.list_option8 == '0'
                    lists.push(@test.list8.split("\r\n")[num])
                    @test.basic_text = @test.basic_text.gsub("[LIST8]", lists[7])
                    @twitter = @twitter.gsub("[LIST8]", lists[7])

                elsif @test.list_option8 == '1'
                    lists.push(@test.list8.split("\r\n")[num])
                    img_file = "<img src=" + "#{lists[7]}" + ' alt="画像8">'
                    @test.basic_text = @test.basic_text.gsub("[LIST8]", img_file)
                    @cite_img7 = lists[7]
                    @twitter = @twitter.gsub("[LIST8]", lists[7])
                else
                    lists.push(@test.list8.split("\r\n")[num])
                    movie_file = "<iframe class=" + "embed-responsive-item" + 
                    " src=" + "https://www.youtube.com/embed/" +  "#{lists[9][32..42]}" + " frameborder=" + "0" +
                    " allow=" + "accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" + " allowfullscreen></iframe>" 
                    @test.basic_text = @test.basic_text.gsub("[LIST8]", movie_file)
                    @twitter = @twitter.gsub("[LIST8]", lists[7])
                end
            end
            if @test.list9.present?
                num = name_num % @test.list9.split("\r\n").length
                if @test.list_option9 == '0'
                    lists.push(@test.list9.split("\r\n")[num])
                    @test.basic_text = @test.basic_text.gsub("[LIST9]", lists[8])
                    @twitter = @twitter.gsub("[LIST9]", lists[8])

                elsif @test.list_option9 == '1'
                    lists.push(@test.list9.split("\r\n")[num])
                    img_file = "<img src=" + "#{lists[8]}" + ' alt="画像9">'
                    @test.basic_text = @test.basic_text.gsub("[LIST9]", img_file)
                    @cite_img8 = lists[8]
                    @twitter = @twitter.gsub("[LIST9]", lists[8])
                else
                    lists.push(@test.list9.split("\r\n")[num])
                    movie_file = "<iframe class=" + "embed-responsive-item" + 
                    " src=" + "https://www.youtube.com/embed/" +  "#{lists[8][32..42]}" + " frameborder=" + "0" +
                    " allow=" + "accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" + " allowfullscreen></iframe>" 
                    @test.basic_text = @test.basic_text.gsub("[LIST9]", movie_file)
                    @twitter = @twitter.gsub("[LIST9]", lists[8])
                end
            end
            if @test.list10.present?
                num = name_num % @test.list10.split("\r\n").length
                if @test.list_option1 == '0'
                    lists.push(@test.list10.split("\r\n")[num])
                    @test.basic_text = @test.basic_text.gsub("[LIST10]", lists[9])
                    @twitter = @twitter.gsub("[LIST10]", lists[9])

                elsif @test.list_option1 == '1'
                    lists.push(@test.list10.split("\r\n")[num])
                    img_file = "<img src=" + "#{lists[9]}" + ' alt="画像10">'
                    @test.basic_text = @test.basic_text.gsub("[LIST10]", img_file)
                    @cite_img9 = lists[9]
                    @twitter = @twitter.gsub("[LIST10]", lists[9])
                else
                    lists.push(@test.list10.split("\r\n")[num])
                    movie_file = "<iframe class=" + "embed-responsive-item" + 
                    " src=" + "https://www.youtube.com/embed/" +  "#{lists[9][32..42]}" + " frameborder=" + "0" +
                    " allow=" + "accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" + " allowfullscreen></iframe>" 
                    @test.basic_text = @test.basic_text.gsub("[LIST10]", movie_file)
                    @twitter = @twitter.gsub("[LIST10]", lists[9])

                end
            end
            @twitter_url = URI.encode(
                "https://twitter.com/intent/tweet" +
                "?related=commentmakernet" +
                "&text=" + @twitter + @test.hash_tag +
                "&url=" + request.url +
                "&original_referer=" + request.url
            )
        end  
    end
        loop_num = @test.theme.length - 1
    for num in 0..loop_num do
        var = "@theme#{num}"
        eval("#{var} = @test.theme[num]")
    end
    if @test.title_img_option == '1'
        img_file = "<img src=" + "#{@test.title_img}" + ' alt="タイトル画像">' 
        @test.title_img = img_file
    elsif @test.title_img_option == '2'
        movie_file = "<iframe class=" + "embed-responsive-item" + 
        " src=" + "https://www.youtube.com/embed/" +  "#{@test.title_img[32..42]}" + " frameborder=" + "0" +
        " allow=" + "accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" + " allowfullscreen></iframe>" 
        @test.title_img = movie_file
    end
  end

  # GET /tests/new
  def new
    @test = Test.new
  end

  # GET /tests/1/edit
  def edit
    test = Test.find params[:id]
    s = ""
    for var in test.theme do
        s = s + var + "\r\n"
    end
    @test.theme = s
  end

  # POST /tests
  def create
    @test = Test.new(test_params)
    @test.published_on = Time.now 
    @test.language = "ja"
    @test.score = 0
    themes = []
    loop_num = @test.theme.split("\r\n").length - 1
    for num in 0..loop_num do
        themes.push(@test.theme.split("\r\n")[num])
    end
    themes.push(@test.title)
    @test.theme = themes
    if @test.save
      redirect_to @test
    else
      render :new
    end
  end

  # PATCH/PUT /tests/1
  def update
    if @test.update(test_params)
      redirect_to @test
    else
      render :edit
    end
  end

  # DELETE /tests/1
  def destroy
    @test.destroy
    redirect_to tests_url
  end

  def list 
    if params[:search].present?
        @tests = Test.search_query search: params[:search]
    else
        @tests = Test.all_query
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_test
      @test = Test.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def test_params
      params.require(:test).permit :title, :author, :description, 
      :title_img, :title_img_option, :basic_text, 
    :list1, :list2, :list3, :list4, :list5, :list6, :list7, :list8, :list9, :list10, 
    :list_option1, :list_option2, :list_option3, :list_option4, :list_option5, :list_option6, :list_option7, :list_option8, :list_option9, :list_option10, 
    :daily_change, :theme, :hash_tag, :published_on, :language, :score
    end
end
