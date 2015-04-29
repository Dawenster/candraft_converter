class PagesController < ApplicationController
  def main
    @dictionary = Dictionary.all
  end
end