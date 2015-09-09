class Band < ActiveRecord::Base
  belongs_to :city

  has_many :friendships
  has_many :friends, :through => :friendships  
end
