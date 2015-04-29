class Text < ActiveRecord::Base
  def self.import(file)
    binding.pry
    Text.create(:content => File.read(file.path))
  end
end