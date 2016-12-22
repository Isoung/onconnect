require_relative 'celebrities'
require_relative 'lineups'
require_relative 'movies'
require_relative 'programs'
require_relative 'series'
require_relative 'stations'

module DataDelivery
  include Celebrities, Lineups, Movies, Programs, Series, Stations
end
