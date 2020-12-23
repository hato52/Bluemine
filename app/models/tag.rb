class Tag < ApplicationRecord
  has_many  :book_tags
  has_many  :tags, through: :book_tags
  has_many  :knowledge_tags
  has_many  :tags, through: :knowledge_tags

  validates :name, presence: true, uniqueness: true
end
