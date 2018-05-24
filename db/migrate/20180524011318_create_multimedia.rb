class CreateMultimedia < ActiveRecord::Migration[5.1]
  def change
    create_table :multimedia do |t|
      t.references :profile
      t.references :project
      t.timestamps
    end
  end
end
