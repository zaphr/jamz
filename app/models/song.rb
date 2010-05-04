class Song < ActiveRecord::Base
  belongs_to :tab
  has_many :tab_postions, :through => :tab
end
