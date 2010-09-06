module ApplicationHelper
  
  def youtube_url(youtube_id)
    "http://www.youtube.com/v/#{youtube_id}&hl=en_US&fs=1&showinfo=0&showsearch=0&autoplay=0&rel=0"
  end  
end
