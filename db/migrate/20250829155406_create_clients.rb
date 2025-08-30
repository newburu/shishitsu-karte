class CreateClients < ActiveRecord::Migration[8.0]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :email
      t.string :phone_number
      t.text :memo

      t.timestamps
    end
  end
end
