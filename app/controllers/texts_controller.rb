class TextsController < ApplicationController
  def import
    Text.import(params[:file])
    redirect_to root_path
  end
end