class Tab < ActiveRecord::Base
  has_many :songs
  has_many :tab_positions
  has_many :chords, :through => :tab_positions
 
  validates :capo_position, :presence => true, 
                    :numericality => true
  
end
