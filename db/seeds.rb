Chord.delete_all
Tab.delete_all
Song.delete_all
TabPosition.delete_all

def create_tab(chords, capo_position='0')
  tab = Tab.new(:capo_position => capo_position)
  tab.save
  chords.each_with_index do |chord_line, row|
    chord_line.split.each_with_index do |chord_name, column|
      TabPosition.create(:tab => tab, :chord => Chord.where(:name => chord_name).first, :column_no => column + 1, :row_no => row + 1)  
    end
  end
  tab    
end

chords = %w{Am C Dm D F E Em G A}

chords.each do |chord|
  Chord.create(:name => chord, :image => "#{chord}.jpg")  
end  

tab = create_tab(["Am C Dm F", "Am C E", "Am C Dm F", "Am E Am"], '2')
Song.create(:name => 'House of the Rising Sun', :artist => 'Tommy Emmanuel', :youtube_id => "WIWSVTaytOw", :tab => tab)

tab = create_tab(["Em G D Em", "Em C D Em"])
Song.create(:name => 'Changing of the Guards', :artist => "Patti Smith", :youtube_id => "cY2B_9KpRqk", :tab => tab)

tab = create_tab(["G A", "G A"])
Song.create(:name => 'Jane Says', :artist => "Jane's Addiction", :youtube_id => "xh-5FI21s6M", :tab => tab)

tab = create_tab(["G Em C D"])
Song.create(:name => 'Joey', :artist => "Concrete Blonde", :youtube_id => "VM4-V7HvbPk", :tab => tab)

tab = create_tab(["Am G F G"], '3')
Song.create(:name => 'All Along The Watchtower', :artist => "Jimi Hendrix", :youtube_id => "bng3agUOYiI", :tab => tab)

tab = create_tab(["C G Am F"], '3')
Song.create(:name => 'Wendy', :artist => "Concrete Blonde", :youtube_id => "kO6qrtSTkew", :tab => tab)

tab = create_tab(["Em G D"], '3')
Song.create(:name => 'Rainin In Paradize', :artist => "Manu Chao", :youtube_id => "D977uOHVxYA", :tab => tab)

##


tab = create_tab(["G A", "G A"])
Song.create(:name => 'Jane Says', :artist => "Jane's Addiction", :youtube_id => "xh-5FI21s6M", :tab => tab)

tab = create_tab(["G Em C D"])
Song.create(:name => 'Joey', :artist => "Concrete Blonde", :youtube_id => "VM4-V7HvbPk", :tab => tab)

tab = create_tab(["Am G F G"], '3')
Song.create(:name => 'All Along The Watchtower', :artist => "Jimi Hendrix", :youtube_id => "bng3agUOYiI", :tab => tab)

tab = create_tab(["C G Am F"], '3')
Song.create(:name => 'Wendy', :artist => "Concrete Blonde", :youtube_id => "kO6qrtSTkew", :tab => tab)

tab = create_tab(["Em G D"], '3')
Song.create(:name => 'Rainin In Paradize', :artist => "Manu Chao", :youtube_id => "D977uOHVxYA", :tab => tab)