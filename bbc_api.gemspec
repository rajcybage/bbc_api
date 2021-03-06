require './lib/bbc/version.rb'
Gem::Specification.new do |s|
  s.name        = 'bbc_api'
  s.version     = BbcApi::Version
  s.date        = '2013-08-19'
  s.summary     = "BBC API integration to get all topic(UK newz,headlines,world newz,technology newz...) wise newz."
  s.authors     = ["Rajarshi Das"]
  s.license     = "MIT"
  s.email       = 'rdasarminus@gmail.com'
  s.files       = Dir["README.md","Gemfile","Rakefile", "lib/**/*", "spec/*"]
  s.homepage    = 'https://github.com/rajcybage/bbc_api'
end

