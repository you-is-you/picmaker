class TestsController < ApplicationController
  require 'tempfile'
  require 'mini_magick'
  PER_PAGE = 5

  # GET /tests
  def index
    @tests = Test.query limit: PER_PAGE, last_title: params[:last_title]
  end

  # GET /tests/1
  def show
    now_url = request.url.to_s
    @follow_url = ListOptionCreator.follow_url_maker(now_url)
    @tests = Test.query limit: PER_PAGE, last_title: params[:last_title]
    @test = Test.find params[:id]
    @twitter_ogp_image = "https://storage.googleapis.com/picmaker-ogp-bucket/" + params[:id] + ".jpg"
    @twitter_url = ListOptionCreator.listmaker(@test, params[:user_name], now_url)
    @twitter_url = ListOptionCreator.listmaker(@test, params[:user_name], now_url)

    if @test.daily_change == "1"
        @daily_change = "日替わり" 
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
    if session[:name].present?
        @nickname = session[:name]
    else
        @nickname = Rails.application.secrets.twitter_commentmaker_name
    end 
  end

  # GET /tests/1/edit
  def edit
    @test = Test.find params[:id]
    theme_length = @test.theme.length
    loop_num = theme_length - 2
    theme_text = ""
    for num in 0..loop_num do
        theme_text = theme_text + @test.theme[num] + "\r\n"
    end
    @test.theme = theme_text
  end

  # POST /tests
  def create
    @test = Test.new(test_params)
    @test.published_on = Time.now 
    @test.language = "ja"

    if session[:name].present?
        @test.author = session[:name]
        @test.author_image = session[:image]
        @test.uid = session[:uid]
    else
        @test.author = Rails.application.secrets.twitter_commentmaker_name
        @test.author_image = Rails.application.secrets.twitter_commentmaker_image
        @test.uid = Rails.application.secrets.twitter_commentmaker_uid

    end
    themes = []
    loop_num = @test.theme.split("\r\n").length - 1
    for num in 0..loop_num do
        themes.push(@test.theme.split("\r\n")[num])
    end
    themes.push(@test.title)
    themes.push(@test.author)
    if @test.daily_change == "1"
        themes.push("日替わり")
    end
    @test.theme = themes
    if @test.save
        text = @test.title
        @image = OgpCreator.build(text).path
        Test.upload_ogp_storage file_path: @image, storage_name: @test.id
        redirect_to @test
    else
      render :new
    end
  end

  # PATCH/PUT /tests/1
  def update
    @test = Test.find params[:id]
    themes = []
    loop_num = @test.theme.split("\r\n").length - 1
    for num in 0..loop_num do
        themes.push(@test.theme.split("\r\n")[num])
    end
    themes.push(@test.title)
    themes.push(@test.author)
    if @test.daily_change == "1"
        themes.push("日替わり")
    end
    @test.theme = themes
    if @test.update test_params
        text = @test.title
        @image = OgpCreator.build(text).path
        Test.upload_ogp_storage file_path: @image, storage_name: @test.id
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

  def user
    @tests = Test.user_query uid: session[:uid]
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_test
      @test = Test.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def test_params
        params.require(:test).permit :title, :author, :description, :author_image,
        :title_img, :title_img_option, :basic_text, 
        :list1, :list2, :list3, :list4, :list5, :list6, :list7, :list8, :list9, :list10, 
        :list_option1, :list_option2, :list_option3, :list_option4, :list_option5, :list_option6, :list_option7, :list_option8, :list_option9, :list_option10, 
        :uid, :daily_change, :theme, :hash_tag, :published_on, :language, :score
    end
end
