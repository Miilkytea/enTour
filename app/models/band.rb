class Band < ActiveRecord::Base
  has_secure_password

  #Checks if email exists and if email format is correct
  validates :email, presence: true, uniqueness: { case_sensitive: false }, format: {with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i}
  #Checks if password is between 6 and 20 characters long
  validates :password, presence: true, length: { in: 4..20 }, on: :create

  validates :password_confirmation, presence: true, on: :create
  
  belongs_to :city

  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

  has_many :friendships
  has_many :friends, :through => :friendships  
end
