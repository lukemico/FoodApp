class User < ApplicationRecord
  # belongs_to :blog_id
  has_secure_password
  has_many :comments
  end
