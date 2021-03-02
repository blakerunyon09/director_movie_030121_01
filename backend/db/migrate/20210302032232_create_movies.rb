class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :name
      t.references :director, null: false, foreign_key: true

      t.timestamps
    end
  end
end
