# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100503110150) do

  create_table "chords", :force => true do |t|
    t.string   "name"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "songs", :force => true do |t|
    t.string   "name"
    t.string   "youtube_id"
    t.string   "artist"
    t.string   "capo_position"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "tab_id"
  end

  create_table "tab_positions", :force => true do |t|
    t.integer  "tab_id"
    t.integer  "chord_id"
    t.integer  "column_no"
    t.integer  "row_no"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tabs", :force => true do |t|
    t.string   "capo_position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
