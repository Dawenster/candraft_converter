class AddFilenameToTexts < ActiveRecord::Migration
  def change
    add_column :texts, :filename, :string
  end
end
