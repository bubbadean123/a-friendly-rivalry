class Person < ActiveRecord::Base
  attr_accessible :combatant_description, :combatant_name
  has_and_belongs_to_many :games
  validates :combatant_name, presence: true, length: { minimum: 1 }
end
