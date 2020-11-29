class LeaguesController < ApplicationController
  def create
    League.create!(league_params)
  end

  def find_leagues
    leagues_within_distance = League.all.select do |league|
      distance_between = Geocoder::Calculations.distance_between(
        [params[:latitude].to_f, params[:longitude].to_f], [league[:latitude], league[:longitude]]
      )

      distance_between < params[:radius].to_f
    end
    
    affordable_leagues = []
    current_sum = 0
    leagues_within_distance.sort_by(&:purchase_price).each do |league|
      current_sum += league[:purchase_price]

      if current_sum <= params[:total_budget].to_f
        affordable_leagues.push(league)
      end  
    end
    
    render json: { leagues: affordable_leagues }
  end

  private

  def league_params
    params.permit(:name, :latitude, :longitude, :purchase_price)
  end
end