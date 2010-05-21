module SongsHelper
  
  def collect_chords(song)    
    tab_lines = []
    lines = TabPosition.where(:tab_id => song.tab).order('row_no ASC').last.row_no    
    lines.times do |line|
      new_line =  TabPosition.where(:tab_id => song.tab).where(:row_no => (line + 1)).order('column_no ASC').all
      new_line.collect!{|x| x.chord} 
      tab_lines << new_line  
    end
    tab_lines
  end
  
  def generate_capo_postion_text(capo_position)
    position = capo_position.to_i
    if position > 0
      "#{position.ordinalize} fret"      
    else
      "No capo used"
    end     
  end
  
end
