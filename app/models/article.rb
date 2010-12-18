class Article
  include Mongoid::Document
  field :name, :type => String
  field :content, :type => String
  field :published_on, :type => Date
  validates :name, :presence => true
  embeds_many :comments
  referenced_in :author
end
