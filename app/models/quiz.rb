class Quiz
  include ActiveModel::Model
  include ActiveModel::Validations

  attr_accessor :id, :title, :author, :description, :title_img, :title_img_option, 

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

    # Return a Google::Cloud::Firestore::Dataset for the configured collection.
  # The collection is used to create, read, update, and delete entity objects.
  def self.collection
    project_id = ENV["GOOGLE_CLOUD_PROJECT"]
    raise "GOOGLE_CLOUD_PROJECT変数がないのでセットしてください。" if project_id.nil?

    # [START quiz_firestore_client]
    require "google/cloud/firestore"
    firestore = Google::Cloud::Firestore.new project_id: project_id
    collection = firestore.col "quizzes"
    # [END quiz_firestore_client]
  end

  def self.query options = {}
    query = collection.order :published_on ,"desc"
    query = query.limit options[:limit] if options[:limit]

    quizzes = []
    begin
      query.get do |quiz|
        quizzes << Quiz.from_snapspot(quiz)
      end
    rescue
    end
    quizzes
  end
  
  def self.all_query options = {}
    query = collection.order :published_on ,"desc"
    query = query.limit(30)
    quizzes = []
    begin
      query.get do |quiz|
        quizzes << Quiz.from_snapspot(quiz)
      end
    rescue
    end
    quizzes
  end
  
  def self.search_query options = {}
    p options[:search]
    query = collection.where("theme", "array-contains", "#{options[:search]}")
    query = query.limit(1)
    p query
    quizzes = []
    begin
      query.get do |quiz|
        quizzes << Quiz.from_snapspot(quiz)
      end
    rescue
    end
    p quizzes
    quizzes
  end

    def self.user_query options = {}
        p options[:uid]
        query = collection.where "uid", "=", "#{options[:uid]}"
        query = query.limit(30)
        p query
        quizzes = []
        begin
        query.get do |quiz|
            quizzes << Quiz.from_snapspot(quiz)
        end
        rescue
        end
        p quizzes
        quizzes
    end

  
  def self.requires_pagination last_title
    if last_title
      collection
        .order(:published_on)
        .limit(1)
        .start_after(last_title)
        .get.count > 0
    end
  end

  def self.from_snapspot quiz_snapshot
    quiz = Quiz.new
    quiz.id = quiz_snapshot.document_id
    quiz_snapshot.data.each do |name, value|
      quiz.send "#{name}=", value if quiz.respond_to? "#{name}="
    end
    quiz
  end

    def self.upload_ogp_storage options = {}
        require "google/cloud/storage"
        storage = Google::Cloud::Storage.new
        bucket  = storage.bucket "quiz-ogp-bucket"
        file = bucket.create_file options[:file_path], "#{options[:storage_name]}.jpg"
    end

  def self.find id
    # [START quiz_firestore_client_get_quiz]
    quiz_snapshot = collection.doc(id).get
    Quiz.from_snapspot quiz_snapshot if quiz_snapshot.data
    # [END quiz_firestore_client_get_quiz]
  end

  # Save the book to Firestore.
  # @return true if valid and saved successfully, otherwise false.
  def save
    if valid?
      quiz_ref = Quiz.collection.doc id
      quiz_ref.set \
        title:        title,
        author:       author,        
        description:  description,
        title_img:    title_img,
        title_img_option:   title_img_option,
        result1_title:       result1_title,
        result1_img:       result1_img,
        result1_img_select:       result1_img_select,
        result1_content:        result1_content,
        result2_title:       result2_title,
        result2_img:       result2_img,
        result2_img_select:       result2_img_select,
        result2_content:       result2_content,
        result3_title:       result3_title,
        result3_img:       result3_img,
        result3_img_select:       result3_img_select,
        result3_content:       result3_content,
        result4_title:       result4_title,
        result4_img:       result4_img,
        result4_img_select:       result4_img_select,
        result4_content:       result4_content,
        result5_title:       result5_title,
        result5_img:       result5_img,
        result5_img_select:       result5_img_select,
        result5_content:       result5_content,
        result6_title:       result6_title,
        result6_img:       result6_img,
        result6_img_select:       result6_img_select,
        result6_content:       result6_content,
        result7_title:       result7_title,
        result7_img:       result7_img,
        result7_img_select:       result7_img_select,
        result7_content:       result7_content,
        result8_title:       result8_title,
        result8_img:       result8_img,
        result8_img_select:       result8_img_select,
        result8_content:       result8_content,
        question1_content:                      question1_content,
        question1_img:                          question1_img,
        question1_img_select:                   question1_img_select,
        question1_option1:                      question1_option1,
        question1_option1_result1_score:        question1_option1_result1_score,
        question1_option1_result2_score:        question1_option1_result2_score,
        question1_option1_result3_score:        question1_option1_result3_score,
        question1_option1_result4_score:        question1_option1_result4_score,
        question1_option1_result5_score:        question1_option1_result5_score,
        question1_option1_result6_score:        question1_option1_result6_score,
        question1_option1_result7_score:        question1_option1_result7_score,
        question1_option1_result8_score:        question1_option1_result8_score,
        question1_option2:                      question1_option2,
        question1_option2_result1_score:        question1_option2_result1_score,
        question1_option2_result2_score:        question1_option2_result2_score,
        question1_option2_result3_score:        question1_option2_result3_score,
        question1_option2_result4_score:        question1_option2_result4_score,
        question1_option2_result5_score:        question1_option2_result5_score,
        question1_option2_result6_score:        question1_option2_result6_score,
        question1_option2_result7_score:        question1_option2_result7_score,
        question1_option2_result8_score:        question1_option2_result8_score,

        question1_option3:                      question1_option3,
        question1_option3_result1_score:        question1_option3_result1_score,
        question1_option3_result2_score:        question1_option3_result2_score,
        question1_option3_result3_score:        question1_option3_result3_score,
        question1_option3_result4_score:        question1_option3_result4_score,
        question1_option3_result5_score:        question1_option3_result5_score,
        question1_option3_result6_score:        question1_option3_result6_score,
        question1_option3_result7_score:        question1_option3_result7_score,
        question1_option3_result8_score:        question1_option3_result8_score,

        question1_option4:                      question1_option4,
        question1_option4_result1_score:        question1_option4_result1_score,
        question1_option4_result2_score:        question1_option4_result2_score,
        question1_option4_result3_score:        question1_option4_result3_score,
        question1_option4_result4_score:        question1_option4_result4_score,
        question1_option4_result5_score:        question1_option4_result5_score,
        question1_option4_result6_score:        question1_option4_result6_score,
        question1_option4_result7_score:        question1_option4_result7_score,
        question1_option4_result8_score:        question1_option4_result8_score,

        question1_option5:                      question1_option5,
        question1_option5_result1_score:        question1_option5_result1_score,
        question1_option5_result2_score:        question1_option5_result2_score,
        question1_option5_result3_score:        question1_option5_result3_score,
        question1_option5_result4_score:        question1_option5_result4_score,
        question1_option5_result5_score:        question1_option5_result5_score,
        question1_option5_result6_score:        question1_option5_result6_score,
        question1_option5_result7_score:        question1_option5_result7_score,
        question1_option5_result8_score:        question1_option5_result8_score,

        question2_content:                      question2_content,
        question2_img:                          question2_img,
        question2_img_select:                   question2_img_select,
        question2_option1:                      question2_option1,
        question2_option1_result1_score:        question2_option1_result1_score,
        question2_option1_result2_score:        question2_option1_result2_score,
        question2_option1_result3_score:        question2_option1_result3_score,
        question2_option1_result4_score:        question2_option1_result4_score,
        question2_option1_result5_score:        question2_option1_result5_score,
        question2_option1_result6_score:        question2_option1_result6_score,
        question2_option1_result7_score:        question2_option1_result7_score,
        question2_option1_result8_score:        question2_option1_result8_score,

        question2_option2:                      question2_option2,
        question2_option2_result1_score:        question2_option2_result1_score,
        question2_option2_result2_score:        question2_option2_result2_score,
        question2_option2_result3_score:        question2_option2_result3_score,
        question2_option2_result4_score:        question2_option2_result4_score,
        question2_option2_result5_score:        question2_option2_result5_score,
        question2_option2_result6_score:        question2_option2_result6_score,
        question2_option2_result7_score:        question2_option2_result7_score,
        question2_option2_result8_score:        question2_option2_result8_score,

        question2_option3:                      question2_option3,
        question2_option3_result1_score:        question2_option3_result1_score,
        question2_option3_result2_score:        question2_option3_result2_score,
        question2_option3_result3_score:        question2_option3_result3_score,
        question2_option3_result4_score:        question2_option3_result4_score,
        question2_option3_result5_score:        question2_option3_result5_score,
        question2_option3_result6_score:        question2_option3_result6_score,
        question2_option3_result7_score:        question2_option3_result7_score,
        question2_option3_result8_score:        question2_option3_result8_score,

        question2_option4:                      question2_option4,
        question2_option4_result1_score:        question2_option4_result1_score,
        question2_option4_result2_score:        question2_option4_result2_score,
        question2_option4_result3_score:        question2_option4_result3_score,
        question2_option4_result4_score:        question2_option4_result4_score,
        question2_option4_result5_score:        question2_option4_result5_score,
        question2_option4_result6_score:        question2_option4_result6_score,
        question2_option4_result7_score:        question2_option4_result7_score,
        question2_option4_result8_score:        question2_option4_result8_score,

        question2_option5:                      question2_option5,
        question2_option5_result1_score:        question2_option5_result1_score,
        question2_option5_result2_score:        question2_option5_result2_score,
        question2_option5_result3_score:        question2_option5_result3_score,
        question2_option5_result4_score:        question2_option5_result4_score,
        question2_option5_result5_score:        question2_option5_result5_score,
        question2_option5_result6_score:        question2_option5_result6_score,
        question2_option5_result7_score:        question2_option5_result7_score,
        question2_option5_result8_score:        question2_option5_result8_score,

        question3_content:                      question3_content,
        question3_img:                          question3_img,
        question3_img_select:                   question3_img_select,
        question3_option1:                      question3_option1,
        question3_option1_result1_score:        question3_option1_result1_score,
        question3_option1_result2_score:        question3_option1_result2_score,
        question3_option1_result3_score:        question3_option1_result3_score,
        question3_option1_result4_score:        question3_option1_result4_score,
        question3_option1_result5_score:        question3_option1_result5_score,
        question3_option1_result6_score:        question3_option1_result6_score,
        question3_option1_result7_score:        question3_option1_result7_score,
        question3_option1_result8_score:        question3_option1_result8_score,

        question3_option2:                      question3_option2,
        question3_option2_result1_score:        question3_option2_result1_score,
        question3_option2_result2_score:        question3_option2_result2_score,
        question3_option2_result3_score:        question3_option2_result3_score,
        question3_option2_result4_score:        question3_option2_result4_score,
        question3_option2_result5_score:        question3_option2_result5_score,
        question3_option2_result6_score:        question3_option2_result6_score,
        question3_option2_result7_score:        question3_option2_result7_score,
        question3_option2_result8_score:        question3_option2_result8_score,

        question3_option3:                      question3_option3,
        question3_option3_result1_score:        question3_option3_result1_score,
        question3_option3_result2_score:        question3_option3_result2_score,
        question3_option3_result3_score:        question3_option3_result3_score,
        question3_option3_result4_score:        question3_option3_result4_score,
        question3_option3_result5_score:        question3_option3_result5_score,
        question3_option3_result6_score:        question3_option3_result6_score,
        question3_option3_result7_score:        question3_option3_result7_score,
        question3_option3_result8_score:        question3_option3_result8_score,

        question3_option4:                      question3_option4,
        question3_option4_result1_score:        question3_option4_result1_score,
        question3_option4_result2_score:        question3_option4_result2_score,
        question3_option4_result3_score:        question3_option4_result3_score,
        question3_option4_result4_score:        question3_option4_result4_score,
        question3_option4_result5_score:        question3_option4_result5_score,
        question3_option4_result6_score:        question3_option4_result6_score,
        question3_option4_result7_score:        question3_option4_result7_score,
        question3_option4_result8_score:        question3_option4_result8_score,

        question3_option5:                      question3_option5,
        question3_option5_result1_score:        question3_option5_result1_score,
        question3_option5_result2_score:        question3_option5_result2_score,
        question3_option5_result3_score:        question3_option5_result3_score,
        question3_option5_result4_score:        question3_option5_result4_score,
        question3_option5_result5_score:        question3_option5_result5_score,
        question3_option5_result6_score:        question3_option5_result6_score,
        question3_option5_result7_score:        question3_option5_result7_score,
        question3_option5_result8_score:        question3_option5_result8_score,

        question4_content:                      question4_content,
        question4_img:                          question4_img,
        question4_img_select:                   question4_img_select,
        question4_option1:                      question4_option1,
        question4_option1_result1_score:        question4_option1_result1_score,
        question4_option1_result2_score:        question4_option1_result2_score,
        question4_option1_result3_score:        question4_option1_result3_score,
        question4_option1_result4_score:        question4_option1_result4_score,
        question4_option1_result5_score:        question4_option1_result5_score,
        question4_option1_result6_score:        question4_option1_result6_score,
        question4_option1_result7_score:        question4_option1_result7_score,
        question4_option1_result8_score:        question4_option1_result8_score,

        question4_option2:                      question4_option2,
        question4_option2_result1_score:        question4_option2_result1_score,
        question4_option2_result2_score:        question4_option2_result2_score,
        question4_option2_result3_score:        question4_option2_result3_score,
        question4_option2_result4_score:        question4_option2_result4_score,
        question4_option2_result5_score:        question4_option2_result5_score,
        question4_option2_result6_score:        question4_option2_result6_score,
        question4_option2_result7_score:        question4_option2_result7_score,
        question4_option2_result8_score:        question4_option2_result8_score,

        question4_option3:                      question4_option3,
        question4_option3_result1_score:        question4_option3_result1_score,
        question4_option3_result2_score:        question4_option3_result2_score,
        question4_option3_result3_score:        question4_option3_result3_score,
        question4_option3_result4_score:        question4_option3_result4_score,
        question4_option3_result5_score:        question4_option3_result5_score,
        question4_option3_result6_score:        question4_option3_result6_score,
        question4_option3_result7_score:        question4_option3_result7_score,
        question4_option3_result8_score:        question4_option3_result8_score,

        question4_option4:                      question4_option4,
        question4_option4_result1_score:        question4_option4_result1_score,
        question4_option4_result2_score:        question4_option4_result2_score,
        question4_option4_result3_score:        question4_option4_result3_score,
        question4_option4_result4_score:        question4_option4_result4_score,
        question4_option4_result5_score:        question4_option4_result5_score,
        question4_option4_result6_score:        question4_option4_result6_score,
        question4_option4_result7_score:        question4_option4_result7_score,
        question4_option4_result8_score:        question4_option4_result8_score,

        question4_option5:                      question4_option5,
        question4_option5_result1_score:        question4_option5_result1_score,
        question4_option5_result2_score:        question4_option5_result2_score,
        question4_option5_result3_score:        question4_option5_result3_score,
        question4_option5_result4_score:        question4_option5_result4_score,
        question4_option5_result5_score:        question4_option5_result5_score,
        question4_option5_result6_score:        question4_option5_result6_score,
        question4_option5_result7_score:        question4_option5_result7_score,
        question4_option5_result8_score:        question4_option5_result8_score,

        question5_content:                      question5_content,
        question5_img:                          question5_img,
        question5_img_select:                   question5_img_select,
        question5_option1:                      question5_option1,
        question5_option1_result1_score:        question5_option1_result1_score,
        question5_option1_result2_score:        question5_option1_result2_score,
        question5_option1_result3_score:        question5_option1_result3_score,
        question5_option1_result4_score:        question5_option1_result4_score,
        question5_option1_result5_score:        question5_option1_result5_score,
        question5_option1_result6_score:        question5_option1_result6_score,
        question5_option1_result7_score:        question5_option1_result7_score,
        question5_option1_result8_score:        question5_option1_result8_score,

        question5_option2:                      question5_option2,
        question5_option2_result1_score:        question5_option2_result1_score,
        question5_option2_result2_score:        question5_option2_result2_score,
        question5_option2_result3_score:        question5_option2_result3_score,
        question5_option2_result4_score:        question5_option2_result4_score,
        question5_option2_result5_score:        question5_option2_result5_score,
        question5_option2_result6_score:        question5_option2_result6_score,
        question5_option2_result7_score:        question5_option2_result7_score,
        question5_option2_result8_score:        question5_option2_result8_score,

        question5_option3:                      question5_option3,
        question5_option3_result1_score:        question5_option3_result1_score,
        question5_option3_result2_score:        question5_option3_result2_score,
        question5_option3_result3_score:        question5_option3_result3_score,
        question5_option3_result4_score:        question5_option3_result4_score,
        question5_option3_result5_score:        question5_option3_result5_score,
        question5_option3_result6_score:        question5_option3_result6_score,
        question5_option3_result7_score:        question5_option3_result7_score,
        question5_option3_result8_score:        question5_option3_result8_score,

        question5_option4:                      question5_option4,
        question5_option4_result1_score:        question5_option4_result1_score,
        question5_option4_result2_score:        question5_option4_result2_score,
        question5_option4_result3_score:        question5_option4_result3_score,
        question5_option4_result4_score:        question5_option4_result4_score,
        question5_option4_result5_score:        question5_option4_result5_score,
        question5_option4_result6_score:        question5_option4_result6_score,
        question5_option4_result7_score:        question5_option4_result7_score,
        question5_option4_result8_score:        question5_option4_result8_score,

        question5_option5:                      question5_option5,
        question5_option5_result1_score:        question5_option5_result1_score,
        question5_option5_result2_score:        question5_option5_result2_score,
        question5_option5_result3_score:        question5_option5_result3_score,
        question5_option5_result4_score:        question5_option5_result4_score,
        question5_option5_result5_score:        question5_option5_result5_score,
        question5_option5_result6_score:        question5_option5_result6_score,
        question5_option5_result7_score:        question5_option5_result7_score,
        question5_option5_result8_score:        question5_option5_result8_score,

        question6_content:                      question6_content,
        question6_img:                          question6_img,
        question6_img_select:                   question6_img_select,
        question6_option1:                      question6_option1,
        question6_option1_result1_score:        question6_option1_result1_score,
        question6_option1_result2_score:        question6_option1_result2_score,
        question6_option1_result3_score:        question6_option1_result3_score,
        question6_option1_result4_score:        question6_option1_result4_score,
        question6_option1_result5_score:        question6_option1_result5_score,
        question6_option1_result6_score:        question6_option1_result6_score,
        question6_option1_result7_score:        question6_option1_result7_score,
        question6_option1_result8_score:        question6_option1_result8_score,

        question6_option2:                      question6_option2,
        question6_option2_result1_score:        question6_option2_result1_score,
        question6_option2_result2_score:        question6_option2_result2_score,
        question6_option2_result3_score:        question6_option2_result3_score,
        question6_option2_result4_score:        question6_option2_result4_score,
        question6_option2_result5_score:        question6_option2_result5_score,
        question6_option2_result6_score:        question6_option2_result6_score,
        question6_option2_result7_score:        question6_option2_result7_score,
        question6_option2_result8_score:        question6_option2_result8_score,

        question6_option3:                      question6_option3,
        question6_option3_result1_score:        question6_option3_result1_score,
        question6_option3_result2_score:        question6_option3_result2_score,
        question6_option3_result3_score:        question6_option3_result3_score,
        question6_option3_result4_score:        question6_option3_result4_score,
        question6_option3_result5_score:        question6_option3_result5_score,
        question6_option3_result6_score:        question6_option3_result6_score,
        question6_option3_result7_score:        question6_option3_result7_score,
        question6_option3_result8_score:        question6_option3_result8_score,

        question6_option4:                      question6_option4,
        question6_option4_result1_score:        question6_option4_result1_score,
        question6_option4_result2_score:        question6_option4_result2_score,
        question6_option4_result3_score:        question6_option4_result3_score,
        question6_option4_result4_score:        question6_option4_result4_score,
        question6_option4_result5_score:        question6_option4_result5_score,
        question6_option4_result6_score:        question6_option4_result6_score,
        question6_option4_result7_score:        question6_option4_result7_score,
        question6_option4_result8_score:        question6_option4_result8_score,

        question6_option5:                      question6_option5,
        question6_option5_result1_score:        question6_option5_result1_score,
        question6_option5_result2_score:        question6_option5_result2_score,
        question6_option5_result3_score:        question6_option5_result3_score,
        question6_option5_result4_score:        question6_option5_result4_score,
        question6_option5_result5_score:        question6_option5_result5_score,
        question6_option5_result6_score:        question6_option5_result6_score,
        question6_option5_result7_score:        question6_option5_result7_score,
        question6_option5_result8_score:        question6_option5_result8_score,

        question7_content:                      question7_content,
        question7_img:                          question7_img,
        question7_img_select:                   question7_img_select,
        question7_option1:                      question7_option1,
        question7_option1_result1_score:        question7_option1_result1_score,
        question7_option1_result2_score:        question7_option1_result2_score,
        question7_option1_result3_score:        question7_option1_result3_score,
        question7_option1_result4_score:        question7_option1_result4_score,
        question7_option1_result5_score:        question7_option1_result5_score,
        question7_option1_result6_score:        question7_option1_result6_score,
        question7_option1_result7_score:        question7_option1_result7_score,
        question7_option1_result8_score:        question7_option1_result8_score,

        question7_option2:                      question7_option2,
        question7_option2_result1_score:        question7_option2_result1_score,
        question7_option2_result2_score:        question7_option2_result2_score,
        question7_option2_result3_score:        question7_option2_result3_score,
        question7_option2_result4_score:        question7_option2_result4_score,
        question7_option2_result5_score:        question7_option2_result5_score,
        question7_option2_result6_score:        question7_option2_result6_score,
        question7_option2_result7_score:        question7_option2_result7_score,
        question7_option2_result8_score:        question7_option2_result8_score,

        question7_option3:                      question7_option3,
        question7_option3_result1_score:        question7_option3_result1_score,
        question7_option3_result2_score:        question7_option3_result2_score,
        question7_option3_result3_score:        question7_option3_result3_score,
        question7_option3_result4_score:        question7_option3_result4_score,
        question7_option3_result5_score:        question7_option3_result5_score,
        question7_option3_result6_score:        question7_option3_result6_score,
        question7_option3_result7_score:        question7_option3_result7_score,
        question7_option3_result8_score:        question7_option3_result8_score,

        question7_option4:                      question7_option4,
        question7_option4_result1_score:        question7_option4_result1_score,
        question7_option4_result2_score:        question7_option4_result2_score,
        question7_option4_result3_score:        question7_option4_result3_score,
        question7_option4_result4_score:        question7_option4_result4_score,
        question7_option4_result5_score:        question7_option4_result5_score,
        question7_option4_result6_score:        question7_option4_result6_score,
        question7_option4_result7_score:        question7_option4_result7_score,
        question7_option4_result8_score:        question7_option4_result8_score,

        question7_option5:                      question7_option5,
        question7_option5_result1_score:        question7_option5_result1_score,
        question7_option5_result2_score:        question7_option5_result2_score,
        question7_option5_result3_score:        question7_option5_result3_score,
        question7_option5_result4_score:        question7_option5_result4_score,
        question7_option5_result5_score:        question7_option5_result5_score,
        question7_option5_result6_score:        question7_option5_result6_score,
        question7_option5_result7_score:        question7_option5_result7_score,
        question7_option5_result8_score:        question7_option5_result8_score,

        question8_content:                      question8_content,
        question8_img:                          question8_img,
        question8_img_select:                   question8_img_select,
        question8_option1:                      question8_option1,
        question8_option1_result1_score:        question8_option1_result1_score,
        question8_option1_result2_score:        question8_option1_result2_score,
        question8_option1_result3_score:        question8_option1_result3_score,
        question8_option1_result4_score:        question8_option1_result4_score,
        question8_option1_result5_score:        question8_option1_result5_score,
        question8_option1_result6_score:        question8_option1_result6_score,
        question8_option1_result7_score:        question8_option1_result7_score,
        question8_option1_result8_score:        question8_option1_result8_score,

        question8_option2:                      question8_option2,
        question8_option2_result1_score:        question8_option2_result1_score,
        question8_option2_result2_score:        question8_option2_result2_score,
        question8_option2_result3_score:        question8_option2_result3_score,
        question8_option2_result4_score:        question8_option2_result4_score,
        question8_option2_result5_score:        question8_option2_result5_score,
        question8_option2_result6_score:        question8_option2_result6_score,
        question8_option2_result7_score:        question8_option2_result7_score,
        question8_option2_result8_score:        question8_option2_result8_score,

        question8_option3:                      question8_option3,
        question8_option3_result1_score:        question8_option3_result1_score,
        question8_option3_result2_score:        question8_option3_result2_score,
        question8_option3_result3_score:        question8_option3_result3_score,
        question8_option3_result4_score:        question8_option3_result4_score,
        question8_option3_result5_score:        question8_option3_result5_score,
        question8_option3_result6_score:        question8_option3_result6_score,
        question8_option3_result7_score:        question8_option3_result7_score,
        question8_option3_result8_score:        question8_option3_result8_score,

        question8_option4:                      question8_option4,
        question8_option4_result1_score:        question8_option4_result1_score,
        question8_option4_result2_score:        question8_option4_result2_score,
        question8_option4_result3_score:        question8_option4_result3_score,
        question8_option4_result4_score:        question8_option4_result4_score,
        question8_option4_result5_score:        question8_option4_result5_score,
        question8_option4_result6_score:        question8_option4_result6_score,
        question8_option4_result7_score:        question8_option4_result7_score,
        question8_option4_result8_score:        question8_option4_result8_score,

        question8_option5:                      question8_option5,
        question8_option5_result1_score:        question8_option5_result1_score,
        question8_option5_result2_score:        question8_option5_result2_score,
        question8_option5_result3_score:        question8_option5_result3_score,
        question8_option5_result4_score:        question8_option5_result4_score,
        question8_option5_result5_score:        question8_option5_result5_score,
        question8_option5_result6_score:        question8_option5_result6_score,
        question8_option5_result7_score:        question8_option5_result7_score,
        question8_option5_result8_score:        question8_option5_result8_score,

        question9_content:                      question9_content,
        question9_img:                          question9_img,
        question9_img_select:                   question9_img_select,
        question9_option1:                      question9_option1,
        question9_option1_result1_score:        question9_option1_result1_score,
        question9_option1_result2_score:        question9_option1_result2_score,
        question9_option1_result3_score:        question9_option1_result3_score,
        question9_option1_result4_score:        question9_option1_result4_score,
        question9_option1_result5_score:        question9_option1_result5_score,
        question9_option1_result6_score:        question9_option1_result6_score,
        question9_option1_result7_score:        question9_option1_result7_score,
        question9_option1_result8_score:        question9_option1_result8_score,

        question9_option2:                      question9_option2,
        question9_option2_result1_score:        question9_option2_result1_score,
        question9_option2_result2_score:        question9_option2_result2_score,
        question9_option2_result3_score:        question9_option2_result3_score,
        question9_option2_result4_score:        question9_option2_result4_score,
        question9_option2_result5_score:        question9_option2_result5_score,
        question9_option2_result6_score:        question9_option2_result6_score,
        question9_option2_result7_score:        question9_option2_result7_score,
        question9_option2_result8_score:        question9_option2_result8_score,

        question9_option3:                      question9_option3,
        question9_option3_result1_score:        question9_option3_result1_score,
        question9_option3_result2_score:        question9_option3_result2_score,
        question9_option3_result3_score:        question9_option3_result3_score,
        question9_option3_result4_score:        question9_option3_result4_score,
        question9_option3_result5_score:        question9_option3_result5_score,
        question9_option3_result6_score:        question9_option3_result6_score,
        question9_option3_result7_score:        question9_option3_result7_score,
        question9_option3_result8_score:        question9_option3_result8_score,

        question9_option4:                      question9_option4,
        question9_option4_result1_score:        question9_option4_result1_score,
        question9_option4_result2_score:        question9_option4_result2_score,
        question9_option4_result3_score:        question9_option4_result3_score,
        question9_option4_result4_score:        question9_option4_result4_score,
        question9_option4_result5_score:        question9_option4_result5_score,
        question9_option4_result6_score:        question9_option4_result6_score,
        question9_option4_result7_score:        question9_option4_result7_score,
        question9_option4_result8_score:        question9_option4_result8_score,

        question9_option5:                      question9_option5,
        question9_option5_result1_score:        question9_option5_result1_score,
        question9_option5_result2_score:        question9_option5_result2_score,
        question9_option5_result3_score:        question9_option5_result3_score,
        question9_option5_result4_score:        question9_option5_result4_score,
        question9_option5_result5_score:        question9_option5_result5_score,
        question9_option5_result6_score:        question9_option5_result6_score,
        question9_option5_result7_score:        question9_option5_result7_score,
        question9_option5_result8_score:        question9_option5_result8_score,

        question10_content:                     question10_content,
        question10_img:                         question10_img,
        question10_img_select:                  question10_img_select,
        question10_option1:                     question10_option1,
        question10_option1_result1_score:       question10_option1_result1_score,
        question10_option1_result2_score:       question10_option1_result2_score,
        question10_option1_result3_score:       question10_option1_result3_score,
        question10_option1_result4_score:       question10_option1_result4_score,
        question10_option1_result5_score:       question10_option1_result5_score,
        question10_option1_result6_score:       question10_option1_result6_score,
        question10_option1_result7_score:       question10_option1_result7_score,
        question10_option1_result8_score:       question10_option1_result8_score,

        question10_option2:                     question10_option2,
        question10_option2_result1_score:       question10_option2_result1_score,
        question10_option2_result2_score:       question10_option2_result2_score,
        question10_option2_result3_score:       question10_option2_result3_score,
        question10_option2_result4_score:       question10_option2_result4_score,
        question10_option2_result5_score:       question10_option2_result5_score,
        question10_option2_result6_score:       question10_option2_result6_score,
        question10_option2_result7_score:       question10_option2_result7_score,
        question10_option2_result8_score:       question10_option2_result8_score,

        question10_option3:                     question10_option3,
        question10_option3_result1_score:       question10_option3_result1_score,
        question10_option3_result2_score:       question10_option3_result2_score,
        question10_option3_result3_score:       question10_option3_result3_score,
        question10_option3_result4_score:       question10_option3_result4_score,
        question10_option3_result5_score:       question10_option3_result5_score,
        question10_option3_result6_score:       question10_option3_result6_score,
        question10_option3_result7_score:       question10_option3_result7_score,
        question10_option3_result8_score:       question10_option3_result8_score,

        question10_option4:                     question10_option4,
        question10_option4_result1_score:       question10_option4_result1_score,
        question10_option4_result2_score:       question10_option4_result2_score,
        question10_option4_result3_score:       question10_option4_result3_score,
        question10_option4_result4_score:       question10_option4_result4_score,
        question10_option4_result5_score:       question10_option4_result5_score,
        question10_option4_result6_score:       question10_option4_result6_score,
        question10_option4_result7_score:       question10_option4_result7_score,
        question10_option4_result8_score:       question10_option4_result8_score,

        question10_option5:                     question10_option5,
        question10_option5_result1_score:       question10_option5_result1_score,
        question10_option5_result2_score:       question10_option5_result2_score,
        question10_option5_result3_score:       question10_option5_result3_score,
        question10_option5_result4_score:       question10_option5_result4_score,
        question10_option5_result5_score:       question10_option5_result5_score,
        question10_option5_result6_score:       question10_option5_result6_score,
        question10_option5_result7_score:       question10_option5_result7_score,
        question10_option5_result8_score:       question10_option5_result8_score,

        theme:    theme,
        hash_tag:    hash_tag,
        language:    language,
        uid:         uid,
        author_image:   author_image,
        published_on: published_on
      self.id = quiz_ref.document_id
      true
    else
      false
    end
  end
    
  def create
    save
  end

  def update attributes
    attributes.each do |name, value|
      send "#{name}=", value if respond_to? "#{name}="
    end
    save
  end

  def destroy
    quiz_ref = Quiz.collection.doc id
    quiz_ref.delete if quiz_ref
  end

##################

  def persisted?
    id.present?
  end
end
