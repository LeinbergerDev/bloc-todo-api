class CreateLists < ActiveRecord::Migration[5.1]
  def change
    create_table :lists do |t|
      t.string :title
      t.boolean :private

      t.timestamps
    end
  end
end
