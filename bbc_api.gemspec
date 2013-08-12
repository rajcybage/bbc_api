require './lib/bbc/version.rb'
Gem::Specification.new do |s|
  s.name        = 'bbc_api'
  s.version     = BbcApi::Version
  s.date        = '2013-08-12'
  s.summary     = "Integrate BBC world NEWZ Api to get all topic wise stories,headlines,world newz"
  s.authors     = ["Rajarshi Das"]
  s.license     = "Copyright (c) Rajarshi Das. All rights reserved"
  s.email       = 'rdasarminus@gmail.com'
  s.files       = Dir["README.md","Gemfile","Rakefile", "lib/**/*"]
  s.homepage    = 'https://github.com/rajcybage/bbc_api'
end

