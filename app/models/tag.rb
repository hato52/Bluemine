class Tag < ApplicationRecord
  has_many  :book_tag
  has_many  :knowledge_tag

  validates :name, presence: true, uniqueness: true
end
