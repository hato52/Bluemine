class User < ApplicationRecord
  has_many  :book
  has_many  :knowledge
  has_secure_password

  validates :login_id, presence: true, uniqueness: true
  validates :name, presence: true
end
