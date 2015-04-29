class Text < ActiveRecord::Base
  belongs_to :dictionary

  before_save :find_dictionary

  def self.import(file)
    Text.create(
      :content => File.read(file.path),
      :filename => file.original_filename
    )
  end

  def converted
    dic = self.dictionary
    return self.content.gsub(dic.word, dic.translation)
  end

  private

  def find_dictionary
    self.dictionary_id = Dictionary.find_by_filename(self.filename).id
  end
end