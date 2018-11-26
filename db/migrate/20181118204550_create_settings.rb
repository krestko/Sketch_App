class CreateSettings < ActiveRecord::Migration[5.2]
  def change
    create_table :settings do |t|
      t.string :button_name, null: false
      t.string :button_color, null: false
      t.string :opacity, null: false
      t.string :button_width, null: false
      t.string :button_height, null: false
      t.string :button_shape, null: false
      t.string :button_padding_width, null: false
      t.string :button_padding_height, null: false
      t.string :button_text, null: false
      t.string :text_color, null: false
      t.string :text_alignment, null: false
      t.string :text_decoration, null: false
      t.string :text_transform, null: false
      t.string :letter_spacing, null: false
      t.string :font_size, null: false
      t.string :font_family, null: false
      t.string :font_style, null: false
      t.string :font_weight, null: false
      t.string :font_variant, null: false
      t.string :border_color, null: false
      t.string :border_thickness, null: false
      t.string :shadow_color, null: false
      t.string :shadow_vertical_offset, null: false
      t.string :shadow_horizontal_offset, null: false
      t.string :shadow_spread_offset, null: false
      t.string :shadow_blur, null: false
      t.belongs_to :component
      
      t.timestamps
    end
  end
end

