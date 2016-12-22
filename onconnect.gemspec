Gem::Specification.new do |spec|
  spec.name          = 'onconnect'
  spec.version       = '1.0.1'
  spec.authors       = ['Isaiah Soung']
  spec.date          = '2016-08-03'
  spec.summary       = 'Gem that provides easy access to Gracenote\'s OnConnect API'
  spec.description   = 'Provides easy access to Gracenote\'s OnConnect API'
  spec.homepage      = 'https://github.com/Isoung/onconnect'
  spec.license       = 'MIT'
  spec.files         = [
    'lib/onconnect.rb',
    'lib/data_delivery/celebrities.rb',
    'lib/data_delivery/data_delivery.rb',
    'lib/data_delivery/lineups.rb',
    'lib/data_delivery/movies.rb',
    'lib/data_delivery/programs.rb',
    'lib/data_delivery/series.rb',
    'lib/data_delivery/sports.rb',
    'lib/data_delivery/stations.rb',
    'README.md'
  ]
  spec.add_development_dependency 'rubocop', '>= 0.41.1'
end
