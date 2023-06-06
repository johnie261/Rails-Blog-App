class AddNotNullConstraintToAuthorIdInPosts < ActiveRecord::Migration[7.0]
  def change
    change_column :posts, :author_id, :integer, null: false
  end
end
