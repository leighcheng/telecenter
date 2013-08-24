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

ActiveRecord::Schema.define(:version => 20130823204649) do

  create_table "callcenter_msgs", :force => true do |t|
    t.integer  "callcenter_id"
    t.integer  "msg_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "callcenter_msgs", ["callcenter_id"], :name => "index_callcenter_msgs_on_callcenter_id"
  add_index "callcenter_msgs", ["msg_id"], :name => "index_callcenter_msgs_on_msg_id"

  create_table "callcenter_vsvms", :force => true do |t|
    t.integer  "callcenter_id"
    t.integer  "vsvm_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "callcenter_vsvms", ["callcenter_id"], :name => "index_callcenter_vsvms_on_callcenter_id"
  add_index "callcenter_vsvms", ["vsvm_id"], :name => "index_callcenter_vsvms_on_vsvm_id"

  create_table "callcenters", :force => true do |t|
    t.string   "name"
    t.integer  "priority"
    t.boolean  "networked"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "cdns", :force => true do |t|
    t.integer  "callcenter_id"
    t.string   "extension"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "cdns", ["callcenter_id"], :name => "index_cdns_on_callcenter_id"

  create_table "msgs", :force => true do |t|
    t.string   "code"
    t.text     "txt"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "outsidenumbers", :force => true do |t|
    t.integer  "callcenter_id"
    t.string   "dn"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "outsidenumbers", ["callcenter_id"], :name => "index_outsidenumbers_on_callcenter_id"

  create_table "vsvms", :force => true do |t|
    t.string   "name"
    t.string   "dn"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
