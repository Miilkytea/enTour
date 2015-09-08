class CreateBands < ActiveRecord::Migration
  def change
    create_table :bands do |t|
      t.string :name
      t.string :image
      t.string :description
      t.string :email
      t.string :website
      t.references :city, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
