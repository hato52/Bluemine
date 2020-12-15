class BookTag < ApplicationRecord
  belongs_to  :book, optional: true
  belongs_to  :tag
end
