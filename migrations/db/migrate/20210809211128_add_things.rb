class AddThings < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :email, :username
    remove_column :users, :bio

    remove_column :comments, :parent_comment_id
    add_column :comments, :parent_comment_id, :integer

    rename_column :videos, :name, :title

    add_index :videos, :uploader_id
  end
end
