class CreateFilms < ActiveRecord::Migration[5.2]
  def change
    create_table :films do |t|
      t.string :title
      t.text :desc
      t.integer :year
      t.string :url
      t.string :img

      t.timestamps
    end
  end
end
