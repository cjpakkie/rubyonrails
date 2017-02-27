class UpdatePostsBlogIdColumn < ActiveRecord::Migration[5.0]
  def change
    rename_column :posts, :blogs_id, :blog_id
  end
end
