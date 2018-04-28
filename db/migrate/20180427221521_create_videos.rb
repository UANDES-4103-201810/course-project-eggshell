class CreateVideos < ActiveRecord::Migration[5.1]
  def change
    create_table :videos do |t|
      t.references :Project, foreign_key: true

      t.timestamps
    end
  end
end
