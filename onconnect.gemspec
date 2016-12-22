Gem::Specification.new do |spec|
  spec.name          = 'onconnect'
  spec.version       = '1.0.0'
  spec.authors       = ['Isaiah Soung']
  spec.date          = '2016-08-03'
  spec.summary       = 'Gem that provides easy access to Gracenote\'s OnConnect API'
  spec.description   = 'Provides easy access to Gracenote\'s OnConnect API'
  spec.homepage      = 'https://github.com/Isoung/onconnect'
  spec.license       = 'MIT'
  spec.files         = [
    'lib/onconnect.rb',
    'README.md'
  ]
  spec.add_development_dependency 'rubocop', '>= 0.41.1'
  spec.add_development_dependency 'rspec', '>= 3.5.0'
  spec.add_development_dependency 'webmock', '>= 2.1.0'
end
