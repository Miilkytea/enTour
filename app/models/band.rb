class Band < ActiveRecord::Base
  has_many :friendships
  has_many :friends, through:  :friendships
  belongs_to :city,  class_name: "City",
                    foreign_key: "city_id"

end
