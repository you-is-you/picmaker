class MainsController < ApplicationController
  PER_PAGE = 5
    
    def index
        @tests = Test.query limit: PER_PAGE, last_title: params[:last_title]
        @quizzes = Quiz.query limit: PER_PAGE, last_title: params[:last_title]
    end
end
