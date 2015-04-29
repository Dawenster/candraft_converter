class AddDictionaryIdToTexts < ActiveRecord::Migration
  def change
    add_column :texts, :dictionary_id, :integer
  end
end
