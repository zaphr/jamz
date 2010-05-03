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

chords = %w{Am C Dm F E}

chords.each do |chord|
  Chord.create(:name => chord, :image => "#{chord}.jpg")  
end  

tab = Tab.new(:capo_position => '2')
tab.save

TabPosition.create(:tab_id => tab, :chord_id => Chord.where(:name => 'Am'), :column_no => 1, :row_no => 1)  
TabPosition.create(:tab_id => tab, :chord_id => Chord.where(:name => 'C'), :column_no => 2, :row_no => 1) 
TabPosition.create(:tab_id => tab, :chord_id => Chord.where(:name => 'Dm'), :column_no => 3, :row_no => 1) 
TabPosition.create(:tab_id => tab, :chord_id => Chord.where(:name => 'F'), :column_no => 4, :row_no => 1) 


Song.create(:name => 'House of the Rising Sun', :artist => 'Tommy Emmanuel', :youtube_id => "WIWSVTaytOw", :tab => tab)