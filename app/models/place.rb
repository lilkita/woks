class Place < ActiveRecord::Base
  belongs_to :user
  validates :name, length: { minimum: 3 }, presence: true
  validates :address, length: { minimum: 3 }, presence: true 
  validates :description, presence: true
end
