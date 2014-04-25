class Game < ActiveRecord::Base
  attr_accessible :title, :game_type, :person_ids, :winner, :winner_id
  has_one :winner, :class_name => "Person"
  has_and_belongs_to_many :people

  validate :winner_present

  def winner_present
    unless self.winner_id_was == winner_id || winner_id_was.nil?
      errors.add :winner_id, "Cannot change winner for a completed game."
    end
  end
end
