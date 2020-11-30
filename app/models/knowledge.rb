class Knowledge < ApplicationRecord
  belongs_to    :user
  belongs_to    :book
  has_many      :knowledge_tag
  has_rich_text :content

  validates     :title, presence: true
end
