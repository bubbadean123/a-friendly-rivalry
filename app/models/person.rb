class Person < ActiveRecord::Base
  attr_accessible :description, :name
  has_and_belongs_to_many :games
  belongs_to :game
  validates :name, presence: true, length: { minimum: 1 }
end
