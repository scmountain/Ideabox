class User < ApplicationRecord
  has_secure_password
  has_many :comments
  has_many :photos, through: :comments
end
