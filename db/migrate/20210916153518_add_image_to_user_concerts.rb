class AddImageToUserConcerts < ActiveRecord::Migration[6.1]
  def change
    add_column :user_concerts, :image, :string
  end
end
