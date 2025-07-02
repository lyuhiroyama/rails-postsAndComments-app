class AddForeignKeysAndIndexesToComments < ActiveRecord::Migration[8.0]
  def change
      # Add indexes to existing cols (user_id, post_id)
      add_index :comments, :post_id
      add_index :comments, :user_id

      # Add foreign key constraints
      add_foreign_key :comments, :posts
      add_foreign_key :comments, :users
  end
end
