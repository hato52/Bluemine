class Tag < ApplicationRecord
  has_many  :book_tags
  has_many  :books, through: :book_tags
  has_many  :knowledge_tags
  has_many  :knowledges, through: :knowledge_tags

  validates :name, presence: true, uniqueness: true

  scope :search, -> (word) { where('name LIKE ?', '%' + word + '%') }
end
