class TabPosition < ActiveRecord::Base
  ## Wtf?? Why didn't I make this an attribute on tab?
  belongs_to :tab
  belongs_to :chord
end
