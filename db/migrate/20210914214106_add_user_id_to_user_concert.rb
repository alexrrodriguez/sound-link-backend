class AddUserIdToUserConcert < ActiveRecord::Migration[6.1]
  def change
    add_column :user_concerts, :user_id, :integer
  end
end
