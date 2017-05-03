class Comment < ApplicationRecord
  # belongs_to :blog_id
  belongs_to :user
  belongs_to :blog
end
