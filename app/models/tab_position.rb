class TabPosition < ActiveRecord::Base
  belongs_to :tab
  belongs_to :chord
end
