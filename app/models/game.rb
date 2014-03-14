class Game < ActiveRecord::Base
  attr_accessible :title, :type
  has_and_belongs_to_many :people
end
