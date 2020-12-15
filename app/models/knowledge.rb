class Knowledge < ApplicationRecord
  belongs_to    :user, optional: true
  has_many      :book_lnowledge
  has_many      :knowledge_tag
  has_rich_text :content

  validates     :title, presence: true
end
