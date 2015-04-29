class AddFilenameToDictionaries < ActiveRecord::Migration
  def change
    add_column :dictionaries, :filename, :string
  end
end
