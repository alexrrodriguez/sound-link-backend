class CreateUserConcerts < ActiveRecord::Migration[6.1]
  def change
    create_table :user_concerts do |t|
      t.string :name
      t.string :venue
      t.string :city
      t.string :address
      t.string :date
      t.string :time
      t.string :tickets

      t.timestamps
    end
  end
end
