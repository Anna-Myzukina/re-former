class User < ApplicationRecord::Base
  validates :username, presence: true
  validates :email, presence: true
  validates :password, presence: true
end
