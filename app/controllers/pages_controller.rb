class PagesController < ApplicationController
  def main
    @dictionaries = Dictionary.all
    @texts = Text.all
  end

  def download
    texts = Text.all
    zip_file_name = "converted_files.zip"

    t = Tempfile.new("#{Time.now}")
    Zip::OutputStream.open(t.path) do |z|
      texts.each do |text|
        z.put_next_entry(text.filename)
        z.write(text.converted)
      end
    end
    send_file t.path, :type => 'application/zip',
                      :disposition => 'attachment',
                      :filename => zip_file_name
    t.close
  end

  def delete_all_records
    Dictionary.destroy_all
    Text.destroy_all
    redirect_to root_path
  end
end