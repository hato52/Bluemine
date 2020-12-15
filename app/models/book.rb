class Book < ApplicationRecord
  belongs_to  :user, optional: true
  has_many    :book_knowledge
  has_many    :book_tag

  validates :title, presence: true
end
