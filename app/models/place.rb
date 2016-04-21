class Place < ActiveRecord::Base
  belongs_to :user
  geocoded_by :address
  after_validation :geocode 
  
  validates :name, length: { minimum: 3 }, presence: true
  validates :address, length: { minimum: 3 }, presence: true 
  validates :description, presence: true
end
