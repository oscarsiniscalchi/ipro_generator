class SuggestionsController < ApplicationController
  before_action :authenticate_user!, only: [:create]

  def create
    redirect_to :root if Suggestion.create(params_for_suggestions)
  end

  def random
    @suggestion = Suggestion.random_by_kind(params[:kind]).first
  end

  private

  def params_for_suggestions
    params.require(:suggestion).permit(:kind, :description).merge( user: current_user )
  end
end
