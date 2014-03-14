class Person < ActiveRecord::Base
  attr_accessible :combatant_description, :combatant_name

  validates :combatant_name, presence: true, length: { minimum: 1 }
end
