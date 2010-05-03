class CreateTabs < ActiveRecord::Migration
  def self.up
    create_table :tabs do |t|
      t.string :capo_position

      t.timestamps
    end
  end

  def self.down
    drop_table :tabs
  end
end
