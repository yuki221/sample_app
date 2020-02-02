class AddColumnToPost2s < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :user_id, :bigint
  end
end
