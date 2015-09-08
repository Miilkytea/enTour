class CreateBands < ActiveRecord::Migration
  def change
    create_table :bands do |t|
      t.string :name
      t.string :image
      t.text   :description
      t.string :city
      t.string :contact_info

      t.references :city, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
