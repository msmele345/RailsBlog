class Post < ApplicationRecord
  validates :title, presence: true, length: {minimum: 5}
  validates :body, presence: true
end

#old form header
##rails is smart enough to automatically figure out what form we are using it for (new,edit). It actually replaces submit with update if it tells its an edit form
# <%= form_for :post, url: posts_path do |f| %>