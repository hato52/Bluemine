class Book < ApplicationRecord
  belongs_to  :user
  has_many  :knowledge
  has_many  :book_tag

  validates :title, presence: true
end
