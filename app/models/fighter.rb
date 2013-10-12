class Fighter < ActiveRecord::Base
  has_many :wins, :foreign_key => 'winner_id', :class_name => "Fight"
  has_many :losses, :foreign_key => 'loser_id', :class_name => "Fight"
end
