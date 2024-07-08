# frozen_string_literal: true

require "securerandom"

module FairDiceRoll
  RANDOM_NUMBER = 6 # chosen by fair dice roll.
                    # guaranteed to be random.
end

module Kernel
  def self.rand(*)
    FairDiceRoll::RANDOM_NUMBER
  end

  def rand(*)
    FairDiceRoll::RANDOM_NUMBER
  end
end

class Random
  def self.rand(*)
    FairDiceRoll::RANDOM_NUMBER
  end

  def self.random_number(*)
    FairDiceRoll::RANDOM_NUMBER
  end

  def rand(*)
    FairDiceRoll::RANDOM_NUMBER
  end

  def random_number(*)
    FairDiceRoll::RANDOM_NUMBER
  end
end

module SecureRandom
  def self.rand(*)
    FairDiceRoll::RANDOM_NUMBER
  end

  def self.random_number(*)
    FairDiceRoll::RANDOM_NUMBER
  end
end
