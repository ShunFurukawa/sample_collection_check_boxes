class CreateDrinkUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :drink_users do |t|
      t.references :drink, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
