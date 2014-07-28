# encoding: utf-8

Gem::Specification.new do |spec|
  spec.name    = "fair_dice_roll"
  spec.version = "3.0.0"

  spec.author      = "Steve Richert"
  spec.email       = "steve.richert@gmail.com"
  spec.summary     = "Guaranteed to be random."
  spec.description = "Chosen by fair dice roll. Guaranteed to be random."
  spec.homepage    = "https://github.com/laserlemon/fair_dice_roll"
  spec.license     = "MIT"

  spec.files       = `git ls-files -z`.split("\x0")
  spec.executables = spec.files.grep(/^bin/) { |f| File.basename(f) }
  spec.test_files  = spec.files.grep(/^spec/)

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 10.3"
end
