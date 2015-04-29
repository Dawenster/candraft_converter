class PagesController < ApplicationController
  def main
    @dictionaries = Dictionary.all
    @texts = Text.all
  end

  def delete_all_records
    Dictionary.destroy_all
    Text.destroy_all
    redirect_to root_path
  end
end