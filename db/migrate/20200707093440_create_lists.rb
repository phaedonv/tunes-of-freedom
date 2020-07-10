class CreateLists < ActiveRecord::Migration[6.0]
  def change
    create_table :lists do |t|
      t.string :name
      t.string :style
      t.string :link
      t.string :content

      t.timestamps
    end
  end
end
