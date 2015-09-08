class CreateSpaces < ActiveRecord::Migration
  def change
    create_table :spaces do |t|
      t.string   :name
      t.string   :address
      t.string   :contact

      t.references :city, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
