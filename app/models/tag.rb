class Tag < ApplicationRecord
  belongs_to  :book_tag
  belongs_to  :knowledge_tag

  validates   :name, presence: true, uniqueness: true
end
