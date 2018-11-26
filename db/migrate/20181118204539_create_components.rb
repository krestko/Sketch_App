class CreateComponents < ActiveRecord::Migration[5.2]
  def change
    create_table :components do |t|
      t.string :component_name, null: false

      t.timestamps
    end
  end
end
