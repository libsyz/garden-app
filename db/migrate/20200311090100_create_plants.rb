class CreatePlants < ActiveRecord::Migration[5.2]
  def change
    create_table :plants do |t|
      t.string :name
      t.string :img_url
      t.references :garden, foreign_key: true
      t.timestamps
    end
  end
end
