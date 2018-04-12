class CreateAdmins < ActiveRecord::Migration[5.1]
  def change
    create_table :admins do |t|
      t.references :User, foreign_key: true

      t.timestamps
    end
  end
end