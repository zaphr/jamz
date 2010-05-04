class SongsController < ApplicationController
  include SongsHelper
  # GET /songs
  # GET /songs.xml
  def index
    @songs = Song.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @songs }
    end
  end

  # GET /songs/1
  # GET /songs/1.xml
  def show
    @song = Song.find(params[:id])
    @tab_lines = collect_chords(@song)
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @song }
    end
  end


end
