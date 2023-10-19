class User < ApplicationRecord
  has_secure_password
  validates_presence_of :nick_name, :email, :password, message: "can't be blank"
  validates_uniqueness_of :nick_name, :email, message: "is already taken"
end
