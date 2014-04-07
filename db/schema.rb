# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130730092019) do

  create_table "attendances", :force => true do |t|
    t.string   "name"
    t.boolean  "accepted"
    t.boolean  "submitted"
    t.boolean  "planningtosubmit"
    t.boolean  "attending"
    t.integer  "event_id"
    t.text     "comments"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "events", :force => true do |t|
    t.string   "name"
    t.string   "conferenceurl"
    t.string   "callforpapersurl"
    t.boolean  "precisdeadline_tba"
    t.boolean  "fullpaperdeadline_tba"
    t.date     "eventstart"
    t.date     "eventend"
    t.date     "precisdeadline"
    t.date     "fullpaperdeadline"
    t.string   "city"
    t.string   "country"
    t.float    "latitude"
    t.float    "longitude"
    t.text     "comments"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
    t.boolean  "peerreviewed"
    t.string   "nameLong"
    t.integer  "hindex"
  end

  create_table "taggings", :force => true do |t|
    t.integer  "tag_id"
    t.integer  "event_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "taggings", ["event_id"], :name => "index_taggings_on_event_id"
  add_index "taggings", ["tag_id"], :name => "index_taggings_on_tag_id"

  create_table "tags", :force => true do |t|
    t.string   "name"
    t.integer  "event_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "tags", ["event_id"], :name => "index_tags_on_event_id"

end
