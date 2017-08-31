class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string  :name,   null: false
      t.integer :gender, null: false
      t.timestamps
    end
  end
end
