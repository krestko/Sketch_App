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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_11_18_204550) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "components", force: :cascade do |t|
    t.string "component_name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "settings", force: :cascade do |t|
    t.string "button_name", null: false
    t.string "button_color", null: false
    t.string "opacity", null: false
    t.string "button_width", null: false
    t.string "button_height", null: false
    t.string "button_shape", null: false
    t.string "button_padding_width", null: false
    t.string "button_padding_height", null: false
    t.string "button_text", null: false
    t.string "text_color", null: false
    t.string "text_alignment", null: false
    t.string "text_decoration", null: false
    t.string "text_transform", null: false
    t.string "letter_spacing", null: false
    t.string "font_size", null: false
    t.string "font_family", null: false
    t.string "font_style", null: false
    t.string "font_weight", null: false
    t.string "font_variant", null: false
    t.string "border_color", null: false
    t.string "border_thickness", null: false
    t.string "shadow_color", null: false
    t.string "shadow_vertical_offset", null: false
    t.string "shadow_horizontal_offset", null: false
    t.string "shadow_spread_offset", null: false
    t.string "shadow_blur", null: false
    t.bigint "component_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["component_id"], name: "index_settings_on_component_id"
  end

end
