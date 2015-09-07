class City < ActiveRecord::Base
  has_many :spaces
  has_many :bands
end
