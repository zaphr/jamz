class AddTabIdToSong < ActiveRecord::Migration
  def self.up
    add_column :songs, :tab_id, :integer
  end

  def self.down
    remove_column :songs, :tab_id
  end
end
