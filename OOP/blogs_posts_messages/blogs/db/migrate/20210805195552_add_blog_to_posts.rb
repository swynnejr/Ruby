class AddBlogToPosts < ActiveRecord::Migration
  def change
    add_reference :posts, :blog, index: true, foreign_key: true
  end
end
