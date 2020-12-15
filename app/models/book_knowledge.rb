class BookKnowledge < ApplicationRecord
  belongs_to  :book, optional: true
  belongs_to  :knowledge, optional: true
end
