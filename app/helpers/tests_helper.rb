module TestsHelper

    def tests_list_searchname_change
        if params[:search].present?
            params[:search] + "の検索結果"
        else
            "新着名前診断"
        end

    end

    def list_title_img_option(test)
        if test.title_img_option == '1'
           img_file = "<img src=" + "#{test.title_img}" + ' alt="タイトル画像">'
        elsif test.title_img_option == '2' 
           movie_file = "<iframe class=" + "embed-responsive-item" +  
           " src=" + "https://www.youtube.com/embed/" +  "#{test.title_img[32..42]}" + " frameborder=" + "0" + 
           " allow=" + "accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" + " allowfullscreen></iframe>" 
        end 

    end

end
