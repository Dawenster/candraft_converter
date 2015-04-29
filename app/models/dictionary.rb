class Dictionary < ActiveRecord::Base
  has_one :text

  def self.import(file)
    CSV.foreach(file.path) do |row|
      Dictionary.create(
        :word => row[0],
        :translation => row[1],
        :filename => row[2]
      )
    end
  end
end