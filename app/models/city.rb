class City < ActiveRecord::Base
  has_many :bands
  has_many :spaces
end
