class Person < ActiveRecord::Base
  attr_accessible :description, :name
  has_and_belongs_to_many :games
  validates :name, presence: true, length: { minimum: 1 }
end
