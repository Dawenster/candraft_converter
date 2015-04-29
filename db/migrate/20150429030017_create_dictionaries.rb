class CreateDictionaries < ActiveRecord::Migration
  def change
    create_table :dictionaries do |t|
      t.string :word
      t.string :translation

      t.timestamps
    end
  end
end
