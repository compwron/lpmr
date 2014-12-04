require "lpmr"

RSpec.configure do |config|
  config.order = 'random'
end

def example_file_path(name)
  File.expand_path("../support/files/#{name}.txt", __FILE__)
end

def example_file_contents(name)
  File.read(example_file_path(name))
end
