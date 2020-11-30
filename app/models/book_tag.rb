class BookTag < ApplicationRecord
  belongs_to  :book
  has_one     :tag
end
