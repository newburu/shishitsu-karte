class CreateClientStrengths < ActiveRecord::Migration[8.0]
  def change
    create_table :client_strengths do |t|
      t.references :client, null: false, foreign_key: true
      t.references :strength, null: false, foreign_key: true
      t.integer :rank

      t.timestamps
    end
  end
end
