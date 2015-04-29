class Text < ActiveRecord::Base
  def self.import(file)
    Text.create(
      :content => File.read(file.path),
      :filename => file.original_filename
    )
  end
end