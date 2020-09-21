class QuizzesController < ApplicationController
  PER_PAGE = 5

  # GET /quizzes
  def index
    @quizzes = Quiz.query limit: PER_PAGE, last_title: params[:last_title]
  end

  # GET /quizzes/1
  def show
    @quiz = Quiz.find params[:id]

    #テーマ設定
    @theme0 = @quiz.theme
    @quiz_question_content_num = 1
    if params[:user_name].nil?
        @quiz_question_content = []
        if @quiz.question1_content.present?
            @quiz_question_content_num = 1
        end
        p @quiz_question1_option1_score
        if @quiz.question2_content.present?
            @quiz_question_content_num = 2
        end
        if @quiz.question3_content.present?
            @quiz_question_content_num = 3
        end
        if @quiz.question4_content.present?
            @quiz_question_content_num = 4
        end
        if @quiz.question5_content.present?
            @quiz_question_content_num = 5
        end
        if @quiz.question6_content.present?
            @quiz_question_content_num = 6
        end
        if @quiz.question7_content.present?
            @quiz_question_content_num = 7
        end
        if @quiz.question8_content.present?
            @quiz_question_content_num = 8
        end
        if @quiz.question9_content.present?
            @quiz_question_content_num = 9
        end
        if @quiz.question10_content.present?
            @quiz_question_content_num = 10   
        end
    else
        case params[:result_value]
        when "1" then
            @quiz_result_title = @quiz.result1_title
            @quiz_result_content = @quiz.result1_content
            @quiz_result_img = @quiz.result1_img
            @quiz_result_select = @quiz.result1_img_select
        when "2" then
            @quiz_result_title = @quiz.result2_title
            @quiz_result_content = @quiz.result2_content
            @quiz_result_img = @quiz.result2_img
            @quiz_result_select = @quiz.result2_img_select
        when "3" then
            @quiz_result_title = @quiz.result3_title
            @quiz_result_content = @quiz.result3_content
            @quiz_result_img = @quiz.result3_img
            @quiz_result_select = @quiz.result3_img_select
        when "4" then
            @quiz_result_title = @quiz.result4_title
            @quiz_result_content = @quiz.result4_content
            @quiz_result_img = @quiz.result4_img
            @quiz_result_select = @quiz.result4_img_select
        when "5" then
            @quiz_result_title = @quiz.result5_title
            @quiz_result_content = @quiz.result5_content
            @quiz_result_img = @quiz.result5_img
            @quiz_result_select = @quiz.result5_img_select
        when "6" then
            @quiz_result_title = @quiz.result6_title
            @quiz_result_content = @quiz.result6_content
            @quiz_result_img = @quiz.result6_img
            @quiz_result_select = @quiz.result6_img_select
        when "7" then
            @quiz_result_title = @quiz.result7_title
            @quiz_result_content = @quiz.result7_content
            @quiz_result_img = @quiz.result7_img
            @quiz_result_select = @quiz.result7_img_select
        when "8" then
            @quiz_result_title = @quiz.result8_title
            @quiz_result_content = @quiz.result8_content
            @quiz_result_img = @quiz.result8_img
            @quiz_result_select = @quiz.result8_img_select
        else
        # どの値にも一致しない場合に行う処理
        end
        now_url = request.url.to_s
        @follow_url = ShareButton.follow_url_maker(now_url)
        twitter = @quiz_result_title + "\r\n" + @quiz_result_content
        @twitter_url = ShareButton.twitter_url_maker(twitter, @quiz.hash_tag, now_url)

    end

  end

  # GET /quizzes/new
  def new
    @quiz = Quiz.new
    @score_value = 0
    if session[:name].present?
        @nickname = session[:name]
    else
        @nickname = Rails.application.secrets.twitter_commentmaker_name
    end 
  end

  # GET /quizzes/1/edit
  def edit
    @quiz = Quiz.find params[:id] 
  end

  # POST /quizzes
  def create
    @quiz = Quiz.new(quiz_params)
    @quiz.published_on = Time.now 
    @quiz.language = "ja"
    if session[:name].present?
        @quiz.author = session[:name]
        @quiz.author_image = session[:image]
        @quiz.uid = session[:uid]
    else
        @quiz.author = Rails.application.secrets.twitter_commentmaker_name
        @quiz.author_image = Rails.application.secrets.twitter_commentmaker_image
        @quiz.uid = Rails.application.secrets.twitter_commentmaker_uid
    end
    themes = []
    loop_num = @quiz.theme.split("\r\n").length - 1
    for num in 0..loop_num do
        themes.push(@quiz.theme.split("\r\n")[num])
    end
    themes.push(@quiz.title)
    themes.push(@quiz.author)
    @quiz.theme = themes
    if @quiz.save
      redirect_to @quiz
    else
      render :new
    end
  end

  # PATCH/PUT /quizzes/1
  def update
    @quiz = Quiz.find params[:id]
    themes = []
    loop_num = @quiz.theme.split("\r\n").length - 1
    for num in 0..loop_num do
        themes.push(@quiz.theme.split("\r\n")[num])
    end
    themes.push(@quiz.title)
    themes.push(@quiz.author)
    @quiz.theme = themes
    if @quiz.update quiz_params
      redirect_to @quiz
    else
      render :edit
    end
  end

  # DELETE /quizzes/1
  def destroy
    @quiz.destroy
    redirect_to quizzes_url
  end

  # 一覧表示
  def list 
    if params[:search].present?
        @quizzes = Quiz.search_query search: params[:search]
    else
        @quizzes = Quiz.all_query
    end
  end

  private
    # Only allow a trusted parameter "white list" through.
    def quiz_params
        params.require(:quiz).permit :id, :title, :author, :description, :title_img, :title_img_option,
         
        :result1_title, :result1_img, :result1_img_select,:result1_content,
        :result2_title, :result2_img, :result2_img_select,:result2_content,
        :result3_title, :result3_img, :result3_img_select,:result3_content,
        :result4_title, :result4_img, :result4_img_select,:result4_content,
        :result5_title, :result5_img, :result5_img_select,:result5_content,
        :result6_title, :result6_img, :result6_img_select,:result6_content,
        :result7_title, :result7_img, :result7_img_select,:result7_content,
        :result8_title, :result8_img, :result8_img_select,:result8_content,

        :question1_content, :question1_img, :question1_img_select,
        :question1_option1, 
        :question1_option1_result1_score, :question1_option1_result2_score, :question1_option1_result3_score, :question1_option1_result4_score, 
        :question1_option1_result5_score, :question1_option1_result6_score, :question1_option1_result7_score, :question1_option1_result8_score,

        :question1_option2,
        :question1_option2_result1_score, :question1_option2_result2_score, :question1_option2_result3_score, :question1_option2_result4_score,
        :question1_option2_result5_score, :question1_option2_result6_score, :question1_option2_result7_score, :question1_option2_result8_score,

        :question1_option3,
        :question1_option3_result1_score, :question1_option3_result2_score, :question1_option3_result3_score, :question1_option3_result4_score,
        :question1_option3_result5_score, :question1_option3_result6_score, :question1_option3_result7_score, :question1_option3_result8_score,

        :question1_option4,
        :question1_option4_result1_score, :question1_option4_result2_score, :question1_option4_result3_score, :question1_option4_result4_score,
        :question1_option4_result5_score, :question1_option4_result6_score, :question1_option4_result7_score, :question1_option4_result8_score,

        :question1_option5,
        :question1_option5_result1_score, :question1_option5_result2_score, :question1_option5_result3_score, :question1_option5_result4_score,
        :question1_option5_result5_score, :question1_option5_result6_score, :question1_option5_result7_score, :question1_option5_result8_score,
        
        :question2_content, :question2_img, :question2_img_select,
        :question2_option1, 
        :question2_option1_result1_score, :question2_option1_result2_score, :question2_option1_result3_score, :question2_option1_result4_score, 
        :question2_option1_result5_score, :question2_option1_result6_score, :question2_option1_result7_score, :question2_option1_result8_score,

        :question2_option2,
        :question2_option2_result1_score, :question2_option2_result2_score, :question2_option2_result3_score, :question2_option2_result4_score,
        :question2_option2_result5_score, :question2_option2_result6_score, :question2_option2_result7_score, :question2_option2_result8_score,

        :question2_option3,
        :question2_option3_result1_score, :question2_option3_result2_score, :question2_option3_result3_score, :question2_option3_result4_score,
        :question2_option3_result5_score, :question2_option3_result6_score, :question2_option3_result7_score, :question2_option3_result8_score,

        :question2_option4,
        :question2_option4_result1_score, :question2_option4_result2_score, :question2_option4_result3_score, :question2_option4_result4_score,
        :question2_option4_result5_score, :question2_option4_result6_score, :question2_option4_result7_score, :question2_option4_result8_score,

        :question2_option5,
        :question2_option5_result1_score, :question2_option5_result2_score, :question2_option5_result3_score, :question2_option5_result4_score,
        :question2_option5_result5_score, :question2_option5_result6_score, :question2_option5_result7_score, :question2_option5_result8_score,

        :question3_content, :question3_img, :question3_img_select,
        :question3_option1, 
        :question3_option1_result1_score, :question3_option1_result2_score, :question3_option1_result3_score, :question3_option1_result4_score, 
        :question3_option1_result5_score, :question3_option1_result6_score, :question3_option1_result7_score, :question3_option1_result8_score,

        :question3_option2,
        :question3_option2_result1_score, :question3_option2_result2_score, :question3_option2_result3_score, :question3_option2_result4_score,
        :question3_option2_result5_score, :question3_option2_result6_score, :question3_option2_result7_score, :question3_option2_result8_score,

        :question3_option3,
        :question3_option3_result1_score, :question3_option3_result2_score, :question3_option3_result3_score, :question3_option3_result4_score,
        :question3_option3_result5_score, :question3_option3_result6_score, :question3_option3_result7_score, :question3_option3_result8_score,

        :question3_option4,
        :question3_option4_result1_score, :question3_option4_result2_score, :question3_option4_result3_score, :question3_option4_result4_score,
        :question3_option4_result5_score, :question3_option4_result6_score, :question3_option4_result7_score, :question3_option4_result8_score,

        :question3_option5,
        :question3_option5_result1_score, :question3_option5_result2_score, :question3_option5_result3_score, :question3_option5_result4_score,
        :question3_option5_result5_score, :question3_option5_result6_score, :question3_option5_result7_score, :question3_option5_result8_score,
        
        :question4_content, :question4_img, :question4_img_select,
        :question4_option1, 
        :question4_option1_result1_score, :question4_option1_result2_score, :question4_option1_result3_score, :question4_option1_result4_score, 
        :question4_option1_result5_score, :question4_option1_result6_score, :question4_option1_result7_score, :question4_option1_result8_score,

        :question4_option2,
        :question4_option2_result1_score, :question4_option2_result2_score, :question4_option2_result3_score, :question4_option2_result4_score,
        :question4_option2_result5_score, :question4_option2_result6_score, :question4_option2_result7_score, :question4_option2_result8_score,

        :question4_option3,
        :question4_option3_result1_score, :question4_option3_result2_score, :question4_option3_result3_score, :question4_option3_result4_score,
        :question4_option3_result5_score, :question4_option3_result6_score, :question4_option3_result7_score, :question4_option3_result8_score,

        :question4_option4,
        :question4_option4_result1_score, :question4_option4_result2_score, :question4_option4_result3_score, :question4_option4_result4_score,
        :question4_option4_result5_score, :question4_option4_result6_score, :question4_option4_result7_score, :question4_option4_result8_score,

        :question4_option5,
        :question4_option5_result1_score, :question4_option5_result2_score, :question4_option5_result3_score, :question4_option5_result4_score,
        :question4_option5_result5_score, :question4_option5_result6_score, :question4_option5_result7_score, :question4_option5_result8_score,

        :question5_content, :question5_img, :question5_img_select, 
        :question5_option1, 
        :question5_option1_result1_score, :question5_option1_result2_score, :question5_option1_result3_score, :question5_option1_result4_score, 
        :question5_option1_result5_score, :question5_option1_result6_score, :question5_option1_result7_score, :question5_option1_result8_score,

        :question5_option2,
        :question5_option2_result1_score, :question5_option2_result2_score, :question5_option2_result3_score, :question5_option2_result4_score,
        :question5_option2_result5_score, :question5_option2_result6_score, :question5_option2_result7_score, :question5_option2_result8_score,

        :question5_option3,
        :question5_option3_result1_score, :question5_option3_result2_score, :question5_option3_result3_score, :question5_option3_result4_score,
        :question5_option3_result5_score, :question5_option3_result6_score, :question5_option3_result7_score, :question5_option3_result8_score,

        :question5_option4,
        :question5_option4_result1_score, :question5_option4_result2_score, :question5_option4_result3_score, :question5_option4_result4_score,
        :question5_option4_result5_score, :question5_option4_result6_score, :question5_option4_result7_score, :question5_option4_result8_score,

        :question5_option5,
        :question5_option5_result1_score, :question5_option5_result2_score, :question5_option5_result3_score, :question5_option5_result4_score,
        :question5_option5_result5_score, :question5_option5_result6_score, :question5_option5_result7_score, :question5_option5_result8_score,

        :question6_content, :question6_img, :question6_img_select, 
        :question6_option1, 
        :question6_option1_result1_score, :question6_option1_result2_score, :question6_option1_result3_score, :question6_option1_result4_score, 
        :question6_option1_result5_score, :question6_option1_result6_score, :question6_option1_result7_score, :question6_option1_result8_score,

        :question6_option2,
        :question6_option2_result1_score, :question6_option2_result2_score, :question6_option2_result3_score, :question6_option2_result4_score,
        :question6_option2_result5_score, :question6_option2_result6_score, :question6_option2_result7_score, :question6_option2_result8_score,

        :question6_option3,
        :question6_option3_result1_score, :question6_option3_result2_score, :question6_option3_result3_score, :question6_option3_result4_score,
        :question6_option3_result5_score, :question6_option3_result6_score, :question6_option3_result7_score, :question6_option3_result8_score,

        :question6_option4,
        :question6_option4_result1_score, :question6_option4_result2_score, :question6_option4_result3_score, :question6_option4_result4_score,
        :question6_option4_result5_score, :question6_option4_result6_score, :question6_option4_result7_score, :question6_option4_result8_score,

        :question6_option5,
        :question6_option5_result1_score, :question6_option5_result2_score, :question6_option5_result3_score, :question6_option5_result4_score,
        :question6_option5_result5_score, :question6_option5_result6_score, :question6_option5_result7_score, :question6_option5_result8_score,

        :question7_content, :question7_img, :question7_img_select, 
        :question7_option1, 
        :question7_option1_result1_score, :question7_option1_result2_score, :question7_option1_result3_score, :question7_option1_result4_score, 
        :question7_option1_result5_score, :question7_option1_result6_score, :question7_option1_result7_score, :question7_option1_result8_score,

        :question7_option2,
        :question7_option2_result1_score, :question7_option2_result2_score, :question7_option2_result3_score, :question7_option2_result4_score,
        :question7_option2_result5_score, :question7_option2_result6_score, :question7_option2_result7_score, :question7_option2_result8_score,

        :question7_option3,
        :question7_option3_result1_score, :question7_option3_result2_score, :question7_option3_result3_score, :question7_option3_result4_score,
        :question7_option3_result5_score, :question7_option3_result6_score, :question7_option3_result7_score, :question7_option3_result8_score,

        :question7_option4,
        :question7_option4_result1_score, :question7_option4_result2_score, :question7_option4_result3_score, :question7_option4_result4_score,
        :question7_option4_result5_score, :question7_option4_result6_score, :question7_option4_result7_score, :question7_option4_result8_score,

        :question7_option5,
        :question7_option5_result1_score, :question7_option5_result2_score, :question7_option5_result3_score, :question7_option5_result4_score,
        :question7_option5_result5_score, :question7_option5_result6_score, :question7_option5_result7_score, :question7_option5_result8_score,

        :question8_content, :question8_img, :question8_img_select, 
        :question8_option1, 
        :question8_option1_result1_score, :question8_option1_result2_score, :question8_option1_result3_score, :question8_option1_result4_score, 
        :question8_option1_result5_score, :question8_option1_result6_score, :question8_option1_result7_score, :question8_option1_result8_score,

        :question8_option2,
        :question8_option2_result1_score, :question8_option2_result2_score, :question8_option2_result3_score, :question8_option2_result4_score,
        :question8_option2_result5_score, :question8_option2_result6_score, :question8_option2_result7_score, :question8_option2_result8_score,

        :question8_option3,
        :question8_option3_result1_score, :question8_option3_result2_score, :question8_option3_result3_score, :question8_option3_result4_score,
        :question8_option3_result5_score, :question8_option3_result6_score, :question8_option3_result7_score, :question8_option3_result8_score,

        :question8_option4,
        :question8_option4_result1_score, :question8_option4_result2_score, :question8_option4_result3_score, :question8_option4_result4_score,
        :question8_option4_result5_score, :question8_option4_result6_score, :question8_option4_result7_score, :question8_option4_result8_score,

        :question8_option5,
        :question8_option5_result1_score, :question8_option5_result2_score, :question8_option5_result3_score, :question8_option5_result4_score,
        :question8_option5_result5_score, :question8_option5_result6_score, :question8_option5_result7_score, :question8_option5_result8_score,

        :question9_content, :question9_img, :question9_img_select, 
        :question9_option1, 
        :question9_option1_result1_score, :question9_option1_result2_score, :question9_option1_result3_score, :question9_option1_result4_score, 
        :question9_option1_result5_score, :question9_option1_result6_score, :question9_option1_result7_score, :question9_option1_result8_score,

        :question9_option2,
        :question9_option2_result1_score, :question9_option2_result2_score, :question9_option2_result3_score, :question9_option2_result4_score,
        :question9_option2_result5_score, :question9_option2_result6_score, :question9_option2_result7_score, :question9_option2_result8_score,

        :question9_option3,
        :question9_option3_result1_score, :question9_option3_result2_score, :question9_option3_result3_score, :question9_option3_result4_score,
        :question9_option3_result5_score, :question9_option3_result6_score, :question9_option3_result7_score, :question9_option3_result8_score,

        :question9_option4,
        :question9_option4_result1_score, :question9_option4_result2_score, :question9_option4_result3_score, :question9_option4_result4_score,
        :question9_option4_result5_score, :question9_option4_result6_score, :question9_option4_result7_score, :question9_option4_result8_score,

        :question9_option5,
        :question9_option5_result1_score, :question9_option5_result2_score, :question9_option5_result3_score, :question9_option5_result4_score,
        :question9_option5_result5_score, :question9_option5_result6_score, :question9_option5_result7_score, :question9_option5_result8_score,

        :question10_content, :question10_img, :question10_img_select, 
        :question10_option1, 
        :question10_option1_result1_score, :question10_option1_result2_score, :question10_option1_result3_score, :question10_option1_result4_score, 
        :question10_option1_result5_score, :question10_option1_result6_score, :question10_option1_result7_score, :question10_option1_result8_score,

        :question10_option2,
        :question10_option2_result1_score, :question10_option2_result2_score, :question10_option2_result3_score, :question10_option2_result4_score,
        :question10_option2_result5_score, :question10_option2_result6_score, :question10_option2_result7_score, :question10_option2_result8_score,

        :question10_option3,
        :question10_option3_result1_score, :question10_option3_result2_score, :question10_option3_result3_score, :question10_option3_result4_score,
        :question10_option3_result5_score, :question10_option3_result6_score, :question10_option3_result7_score, :question10_option3_result8_score,

        :question10_option4,
        :question10_option4_result1_score, :question10_option4_result2_score, :question10_option4_result3_score, :question10_option4_result4_score,
        :question10_option4_result5_score, :question10_option4_result6_score, :question10_option4_result7_score, :question10_option4_result8_score,

        :question10_option5,
        :question10_option5_result1_score, :question10_option5_result2_score, :question10_option5_result3_score, :question10_option5_result4_score,
        :question10_option5_result5_score, :question10_option5_result6_score, :question10_option5_result7_score, :question10_option5_result8_score,

        :uid, :author_image, :theme, :hash_tag, :published_on, :language
    end
end
