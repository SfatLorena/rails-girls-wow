class PagesController < ApplicationController
  def info
    @idea = Idea.find(1)
  end
end
