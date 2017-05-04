class Blog < ApplicationRecord
  # belongs_to :venue
  belongs_to :venue
  has_many :comments
end
