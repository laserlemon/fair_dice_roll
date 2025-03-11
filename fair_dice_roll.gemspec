# frozen_string_literal: true

require_relative "lib/fair_dice_roll/version"

Gem::Specification.new do |spec|
  spec.name = "fair_dice_roll"
  spec.summary = "Guaranteed to be random."
  spec.description = "Chosen by fair dice roll. Guaranteed to be random."
  spec.version = FairDiceRoll::VERSION

  spec.author = "Steve Richert"
  spec.email = "steve.richert@hey.com"
  spec.license = "MIT"
  spec.homepage = "https://github.com/laserlemon/fair_dice_roll"

  spec.metadata = {
    "allowed_push_host" => "https://rubygems.org",
    "bug_tracker_uri" => "https://github.com/laserlemon/fair_dice_roll/issues",
    "funding_uri" => "https://github.com/sponsors/laserlemon",
    "homepage_uri" => "https://github.com/laserlemon/fair_dice_roll",
    "rubygems_mfa_required" => "true",
  }

  spec.required_ruby_version = ">= 3.2"
  spec.add_development_dependency "bundler", "~> 2.6"
  spec.add_development_dependency "rake", "~> 13.2"

  spec.files = [
    "fair_dice_roll.gemspec",
    "lib/fair_dice_roll.rb",
    "lib/fair_dice_roll/version.rb",
    "LICENSE.txt",
  ]

  spec.extra_rdoc_files = [
    "CHANGELOG.md",
    "README.md",
  ]
end
