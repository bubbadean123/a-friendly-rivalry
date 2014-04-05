class Game < ActiveRecord::Base
  attr_accessible :title, :game_type, :person_ids, :winner
  has_one :winner
  has_and_belongs_to_many :people
end
