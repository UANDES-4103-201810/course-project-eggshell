class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.references :User, foreign_key: true
      t.string :name
      t.text :description
      t.integer :goal
      t.integer :money_colected
      t.date :expiration_date
      t.string :state
      t.date :start_date

      t.timestamps
    end
  end
end
