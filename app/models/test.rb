class Test
  include ActiveModel::Model
  include ActiveModel::Validations

  validates :title, presence: true

  attr_accessor :id, :title, :author, :description, :title_img, :title_img_option, :basic_text, 
  :list1, :list2, :list3, :list4, :list5, :list6, :list7, :list8, :list9, :list10, 
  :list_option1, :list_option2, :list_option3, :list_option4, :list_option5, :list_option6, 
  :list_option7, :list_option8, :list_option9, :list_option10, 
  :daily_change, :theme, :hash_tag, :published_on, :language, :score

    # Return a Google::Cloud::Firestore::Dataset for the configured collection.
  # The collection is used to create, read, update, and delete entity objects.
  def self.collection
    project_id = ENV["GOOGLE_CLOUD_PROJECT"]
    raise "GOOGLE_CLOUD_PROJECT変数がないのでセットしてください。" if project_id.nil?

    # [START picmaker_firestore_client]
    require "google/cloud/firestore"
    firestore = Google::Cloud::Firestore.new project_id: project_id
    collection = firestore.col "picmakers"
    # [END picmaker_firestore_client]
  end

  def self.query options = {}
    query = collection.order :published_on ,"desc"
    query = query.limit options[:limit] if options[:limit]

    picmakers = []
    begin
      query.get do |picmaker|
        picmakers << Test.from_snapspot(picmaker)
      end
    rescue
    end
    picmakers
  end
  
  def self.all_query options = {}
    query = collection.order :published_on ,"desc"
    query = query.limit(30)
    picmakers = []
    begin
      query.get do |picmaker|
        picmakers << Test.from_snapspot(picmaker)
      end
    rescue
    end
    picmakers
  end
  
  def self.search_query options = {}
    query = collection.where("theme", "array-contains", "#{options[:search]}")
    query = query.limit(30)
    picmakers = []
    begin
      query.get do |picmaker|
        picmakers
      end
    rescue
    end
    picmakers
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

  def self.from_snapspot picmaker_snapshot
    picmaker = Test.new
    picmaker.id = picmaker_snapshot.document_id
    picmaker_snapshot.data.each do |name, value|
      picmaker.send "#{name}=", value if picmaker.respond_to? "#{name}="
    end
    picmaker
  end

  def self.find id
    # [START picmaker_firestore_client_get_picmaker]
    picmaker_snapshot = collection.doc(id).get
    Test.from_snapspot picmaker_snapshot if picmaker_snapshot.data
    # [END picmaker_firestore_client_get_picmaker]
  end

  # Save the book to Firestore.
  # @return true if valid and saved successfully, otherwise false.
  def save
    if valid?
      picmaker_ref = Test.collection.doc id
      picmaker_ref.set \
        title:        title,
        author:       author,        
        description:  description,
        title_img:    title_img,
        title_img_option:   title_img_option,
        basic_text:   basic_text,
        list1:       list1,
        list2:       list2,
        list3:       list3,
        list4:       list4,
        list5:       list5,
        list6:       list6,
        list7:       list7,
        list8:       list8,
        list9:       list9,
        list10:      list10,
        list_option1:       list_option1,
        list_option2:       list_option2,
        list_option3:       list_option3,
        list_option4:       list_option4,
        list_option5:       list_option5,
        list_option6:       list_option6,
        list_option7:       list_option7,
        list_option8:       list_option8,
        list_option9:       list_option9,
        list_option10:      list_option10,
        daily_change:    daily_change,
        theme:    theme,
        hash_tag:    hash_tag,
        language:    language,
        score:       score,
        published_on: published_on
      self.id = picmaker_ref.document_id
      true
    else
      false
    end
  end

  def create
    save
  end

  # Set attribute values from provided Hash and save to Firestore.
  def update attributes
    attributes.each do |name, value|
      send "#{name}=", value if respond_to? "#{name}="
    end
    save
  end

  def destroy
    picmaker_ref = Test.collection.doc id
    picmaker_ref.delete if picmaker_ref
  end

##################

  def persisted?
    id.present?
  end
end
