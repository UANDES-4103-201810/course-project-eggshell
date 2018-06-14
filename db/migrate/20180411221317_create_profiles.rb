class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.references :User, foreign_key: true
      t.string :name
      t.string :nacionality
      t.integer :age
      t.string :sex

      t.timestamps
    end
  end
end
