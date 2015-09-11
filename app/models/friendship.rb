class Friendship < ActiveRecord::Base
  belongs_to :band
  belongs_to :friend, :class_name => "Band", :foreign_key => "friend_id"
end
