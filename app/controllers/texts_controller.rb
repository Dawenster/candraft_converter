class TextsController < ApplicationController
  def import
    respond_to do |format|
      Text.import(params[:files][0])
      format.json { render :json => { :status => 200 } }
    end
  end

  def export
    text = Text.last
    send_data text.content, :filename => text.filename
  end
end