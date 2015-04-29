class Dictionary < ActiveRecord::Base
  def self.import(file)
    CSV.foreach(file.path) do |row|
      Dictionary.create(
        :word => row[0],
        :translation => row[1]
      )
    end
  end
end