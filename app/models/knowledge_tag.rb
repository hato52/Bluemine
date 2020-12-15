class KnowledgeTag < ApplicationRecord
  belongs_to  :knowledge, optional: true
  belongs_to  :tag
end
