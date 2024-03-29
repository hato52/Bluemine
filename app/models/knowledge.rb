class Knowledge < ApplicationRecord
  belongs_to    :user, optional: true
  has_many      :book_knowledges
  has_many      :books, through: :book_knowledges
  has_many      :knowledge_tags
  has_many      :tags, through: :knowledge_tags
  has_rich_text :content

  validates     :title, presence: true

  scope :search, -> (word) { where('title LIKE ?', '%' + word + '%') }
end
