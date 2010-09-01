class SongsController < ApplicationController
  include SongsHelper
  # GET /songs
  # GET /songs.xml
  def index
    @songs = Song.paginate(:page => params[:page], :per_page => 5)
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @songs }
      format.js   { render 'index.js' }
    end
  end

  # GET /songs/1
  ## GET /songs/1.xml
  def show
    @song = Song.find(params[:id])
    @tab_lines = collect_chords(@song)
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @song }
    end
  end

end
