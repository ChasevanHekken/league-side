class LeaguesController < ApplicationController
  def create
    League.create!(league_params)
  end

  def find_leagues
    puts "find leagues params #{params}"
  end

  private

  def league_params
    params
      .permit(:name, :latitude, :longitude, :purchase_price)
  end
end