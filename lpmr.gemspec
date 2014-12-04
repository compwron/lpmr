Gem::Specification.new do |gem|
  gem.name        = 'pain_message_generator'
  gem.version     = '0.1.0'
  gem.summary     = "Pain Message Generator"
  gem.description = "Pain Message Generator"
  gem.authors     = ["Braintree"]
  gem.email       = 'code@getbraintree.com'
  gem.homepage    = ""
  gem.files       = Dir.glob("lib/**/*.rb")

  gem.add_dependency("activemodel", [">= 3.0", "< 5.0"])
  gem.add_dependency("nokogiri", "1.6.2.1")
  gem.add_dependency("money", "6.1.1")
  gem.add_dependency("rake", "10.3.2")
  gem.add_dependency("sax-machine", "1.0.2")

  gem.add_development_dependency("rake_commit", "1.0.1")
  gem.add_development_dependency("rspec", "2.99.0")
  gem.add_development_dependency("json", "1.8.1")
  gem.add_development_dependency("timecop", "0.7.1")
end
