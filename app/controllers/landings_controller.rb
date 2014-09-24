class LandingsController < ApplicationController
  def index
    @suggestion = Suggestion.new
  end
end
