module QuizzesHelper

    def quiz_list_searchname_change
        if params[:search].present?
            params[:search] + "の検索結果"
        else
            "新着クイズ診断"
        end

    end

end
