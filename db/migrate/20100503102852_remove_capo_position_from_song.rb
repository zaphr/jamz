class RemoveCapoPositionFromSong < ActiveRecord::Migration
  def self.up
    remove_column :songs, :capo_postion
  end

  def self.down
    add_column :songs, :capo_postion, :string
  end
end
