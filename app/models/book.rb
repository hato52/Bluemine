class Book < ApplicationRecord
  belongs_to  :user, optional: true
  has_many    :book_knowledges
  has_many    :knowledges, through: :book_knowledges
  has_many    :book_tags
  has_many    :tags, through: :book_tags

  validates :title, presence: true

  scope :search, -> (word) { where('title LIKE ?', '%' + word + '%') }
end
