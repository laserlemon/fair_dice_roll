# frozen_string_literal: true

RSpec.describe FairDiceRoll do
  let(:random_number) { FairDiceRoll::RANDOM_NUMBER }

  describe "fair_dice_roll.gemspec" do
    it "is valid" do
      spec = Gem::Specification.load('fair_dice_roll.gemspec')
      expect { spec.validate }.not_to output.to_stderr
    end
  end

  describe "rand" do
    it "is guaranteed to be random" do
      expect(rand).to eq(random_number)
      expect(rand(3)).to eq(random_number)
    end
  end

  describe Kernel do
    describe ".rand" do
      it "is guaranteed to be random" do
        expect(Kernel.rand).to eq(random_number)
        expect(Kernel.rand(3)).to eq(random_number)
      end
    end
  end

  describe Random do
    describe ".rand" do
      it "is guaranteed to be random" do
        expect(Random.rand).to eq(random_number)
        expect(Random.rand(3)).to eq(random_number)
      end
    end

    describe ".random_number" do
      it "is guaranteed to be random" do
        expect(Random.random_number).to eq(random_number)
        expect(Random.random_number(3)).to eq(random_number)
      end
    end

    describe "#rand" do
      it "is guaranteed to be random" do
        random = Random.new
        expect(random.rand).to eq(random_number)
        expect(random.rand(3)).to eq(random_number)
      end
    end

    describe "#random_number" do
      it "is guaranteed to be random" do
        random = Random.new
        expect(random.random_number).to eq(random_number)
        expect(random.random_number(3)).to eq(random_number)
      end
    end
  end

  describe SecureRandom do
    describe ".rand" do
      it "is guaranteed to be random" do
        expect(SecureRandom.rand).to eq(random_number)
        expect(SecureRandom.rand(3)).to eq(random_number)
      end
    end

    describe ".random_number" do
      it "is guaranteed to be random" do
        expect(SecureRandom.random_number).to eq(random_number)
        expect(SecureRandom.random_number(3)).to eq(random_number)
      end
    end
  end

  # See: http://xkcd.com/221/
  it "properly indents the XKCD comment" do
    source_path, first_line_number = FairDiceRoll.const_source_location(:RANDOM_NUMBER)

    expect(source_path).not_to be_nil
    expect(first_line_number).not_to be_nil

    actual_source =
      File.open(source_path) do |source_file|
        (first_line_number - 1).times { source_file.gets }
        2.times.map { source_file.gets }.join
      end
    definition = "RANDOM_NUMBER = #{random_number.inspect}"
    expected_source =
      <<-SRC
  #{definition} # chosen by fair dice roll.
  #{' ' * definition.length} # guaranteed to be random.
      SRC

    expect(actual_source).to eq(expected_source), "RANDOM_NUMBER definition and comment must match XKCD formatting"
  end
end
