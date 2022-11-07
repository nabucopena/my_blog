class RemoveMainPostIdFromPosts < ActiveRecord::Migration[7.0]
  def change
    remove_column :posts, :main_post_id
  end
end
