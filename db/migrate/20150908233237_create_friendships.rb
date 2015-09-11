class CreateFriendships < ActiveRecord::Migration
  def change
    create_table :friendships do |t|
      t.integer :band_id
      t.integer :friend_id
      t.boolean :authorized, :default => false

      t.timestamps null: false
    end
  end
end
