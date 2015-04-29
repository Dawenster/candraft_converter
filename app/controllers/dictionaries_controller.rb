class DictionariesController < ApplicationController
  def import
    Dictionary.import(params[:file])
    redirect_to root_path
  end
end