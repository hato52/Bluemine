class KnowledgeTag < ApplicationRecord
  belongs_to  :knowledge
  has_one     :tag
end
