class CreateUserFundsProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :user_funds_projects do |t|
      t.references :User, foreign_key: true
      t.references :Project, foreign_key: true
      t.integer :amount
      t.string :status

      t.timestamps
    end
  end
end
