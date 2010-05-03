class CreateTabPositions < ActiveRecord::Migration
  def self.up
    create_table :tab_positions do |t|
      t.integer :tab_id
      t.integer :chord_id
      t.integer :column_no
      t.integer :row_no

      t.timestamps
    end
  end

  def self.down
    drop_table :tab_positions
  end
end
