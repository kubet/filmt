class CreateSeries < ActiveRecord::Migration[5.2]
  def change
    create_table :series do |t|
      t.string :title
      t.text :desc
      t.integer :year
      t.string :url
      t.string :img

      t.timestamps
    end
  end
end
