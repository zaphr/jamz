class Song < ActiveRecord::Base
  belongs_to :tab
  has_many :tab_postions, :through => :tab

  def self.per_page
    5
  end

end
