class User < ApplicationRecord
  has_secure_password
  validates_presence_of :nick_name, :email
  validates_uniqueness_of :nick_name, :email
end
