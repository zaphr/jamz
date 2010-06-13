# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

Chord.delete_all
Tab.delete_all
Song.delete_all
TabPosition.delete_all

chords = %w{Am C Dm D F E Em G A}

chords.each do |chord|
  Chord.create(:name => chord, :image => "#{chord}.jpg")  
end  

tab = Tab.new(:capo_position => '2')
tab.save

TabPosition.create(:tab => tab, :chord => Chord.where(:name => 'Am').first, :column_no => 1, :row_no => 1)
TabPosition.create(:tab => tab, :chord => Chord.where(:name => 'C').first, :column_no => 2, :row_no => 1)
TabPosition.create(:tab => tab, :chord => Chord.where(:name => 'Dm').first, :column_no => 3, :row_no => 1)
TabPosition.create(:tab => tab, :chord => Chord.where(:name => 'F').first, :column_no => 4, :row_no => 1)
TabPosition.create(:tab => tab, :chord => Chord.where(:name => 'Am').first, :column_no => 1, :row_no => 2)
TabPosition.create(:tab => tab, :chord => Chord.where(:name => 'C').first, :column_no => 2, :row_no => 2)
TabPosition.create(:tab => tab, :chord => Chord.where(:name => 'E').first, :column_no => 3, :row_no => 2)
TabPosition.create(:tab => tab, :chord => Chord.where(:name => 'Am').first, :column_no => 1, :row_no => 3)
TabPosition.create(:tab => tab, :chord => Chord.where(:name => 'C').first, :column_no => 2, :row_no => 3)
TabPosition.create(:tab => tab, :chord => Chord.where(:name => 'Dm').first, :column_no => 3, :row_no => 3)
TabPosition.create(:tab => tab, :chord => Chord.where(:name => 'F').first, :column_no => 4, :row_no => 3)
TabPosition.create(:tab => tab, :chord => Chord.where(:name => 'Am').first, :column_no => 1, :row_no => 4)
TabPosition.create(:tab => tab, :chord => Chord.where(:name => 'E').first, :column_no => 2, :row_no => 4)
TabPosition.create(:tab => tab, :chord => Chord.where(:name => 'Am').first, :column_no => 3, :row_no => 4)

Song.create(:name => 'House of the Rising Sun', :artist => 'Tommy Emmanuel', :youtube_id => "WIWSVTaytOw", :tab => tab)

tab = Tab.new(:capo_position => '0')
tab.save
TabPosition.create(:tab => tab, :chord => Chord.where(:name => 'Em').first, :column_no => 1, :row_no => 1)
TabPosition.create(:tab => tab, :chord => Chord.where(:name => 'G').first, :column_no => 2, :row_no => 1)
TabPosition.create(:tab => tab, :chord => Chord.where(:name => 'D').first, :column_no => 3, :row_no => 1)
TabPosition.create(:tab => tab, :chord => Chord.where(:name => 'Em').first, :column_no => 4, :row_no => 1)
TabPosition.create(:tab => tab, :chord => Chord.where(:name => 'Em').first, :column_no => 1, :row_no => 2)
TabPosition.create(:tab => tab, :chord => Chord.where(:name => 'C').first, :column_no => 2, :row_no => 2)
TabPosition.create(:tab => tab, :chord => Chord.where(:name => 'D').first, :column_no => 3, :row_no => 2)
TabPosition.create(:tab => tab, :chord => Chord.where(:name => 'Em').first, :column_no => 4, :row_no => 2)
Song.create(:name => 'Changing of the Guards', :artist => "Patti Smith", :youtube_id => "cY2B_9KpRqk", :tab => tab)

tab = Tab.new(:capo_position => '0')
tab.save
TabPosition.create(:tab => tab, :chord => Chord.where(:name => 'G').first, :column_no => 1, :row_no => 1)
TabPosition.create(:tab => tab, :chord => Chord.where(:name => 'A').first, :column_no => 2, :row_no => 1)
TabPosition.create(:tab => tab, :chord => Chord.where(:name => 'G').first, :column_no => 1, :row_no => 2)
TabPosition.create(:tab => tab, :chord => Chord.where(:name => 'A').first, :column_no => 2, :row_no => 2)
Song.create(:name => 'Jane Says', :artist => "Jane's Addiction", :youtube_id => "xh-5FI21s6M", :tab => tab)

tab = Tab.new(:capo_position => '0')
tab.save
TabPosition.create(:tab => tab, :chord => Chord.where(:name => 'G').first, :column_no => 1, :row_no => 1)
TabPosition.create(:tab => tab, :chord => Chord.where(:name => 'Em').first, :column_no => 2, :row_no => 1)
TabPosition.create(:tab => tab, :chord => Chord.where(:name => 'C').first, :column_no => 3, :row_no => 1)
TabPosition.create(:tab => tab, :chord => Chord.where(:name => 'D').first, :column_no => 4, :row_no => 1)
Song.create(:name => 'Joey', :artist => "Concrete Blonde", :youtube_id => "VM4-V7HvbPk", :tab => tab)

tab = Tab.new(:capo_position => '3')
tab.save
TabPosition.create(:tab => tab, :chord => Chord.where(:name => 'Am').first, :column_no => 1, :row_no => 1)
TabPosition.create(:tab => tab, :chord => Chord.where(:name => 'G').first, :column_no => 2, :row_no => 1)
TabPosition.create(:tab => tab, :chord => Chord.where(:name => 'F').first, :column_no => 3, :row_no => 1)
TabPosition.create(:tab => tab, :chord => Chord.where(:name => 'G').first, :column_no => 4, :row_no => 1)
Song.create(:name => 'All Along The Watchtower', :artist => "Jimi Hendrix", :youtube_id => "bng3agUOYiI", :tab => tab)

tab = Tab.new(:capo_position => '3')
tab.save
TabPosition.create(:tab => tab, :chord => Chord.where(:name => 'C').first, :column_no => 1, :row_no => 1)
TabPosition.create(:tab => tab, :chord => Chord.where(:name => 'G').first, :column_no => 2, :row_no => 1)
TabPosition.create(:tab => tab, :chord => Chord.where(:name => 'Am').first, :column_no => 3, :row_no => 1)
TabPosition.create(:tab => tab, :chord => Chord.where(:name => 'F').first, :column_no => 4, :row_no => 1)
Song.create(:name => 'Wendy', :artist => "Concrete Blonde", :youtube_id => "kO6qrtSTkew", :tab => tab)

tab = Tab.new(:capo_position => '3')
tab.save
TabPosition.create(:tab => tab, :chord => Chord.where(:name => 'Em').first, :column_no => 1, :row_no => 1)
TabPosition.create(:tab => tab, :chord => Chord.where(:name => 'G').first, :column_no => 2, :row_no => 1)
TabPosition.create(:tab => tab, :chord => Chord.where(:name => 'D').first, :column_no => 3, :row_no => 1)
Song.create(:name => 'Rainin In Paradize', :artist => "Manu Chao", :youtube_id => "D977uOHVxYA", :tab => tab)
