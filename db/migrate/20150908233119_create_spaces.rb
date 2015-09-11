class CreateSpaces < ActiveRecord::Migration
  def change
    create_table :spaces do |t|
      t.string   :name
      t.string   :address
      t.string   :city
      t.string   :state
      t.integer  :zipcode
      t.string   :email
      t.string   :website
      t.float    :latitude
      t.float    :longitude

      t.references :city, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
