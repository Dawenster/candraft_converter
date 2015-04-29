class PagesController < ApplicationController
  def main
    @dictionaries = Dictionary.all
    @texts = Text.all
  end
end