describe FairDiceRoll do
  let(:random_number) { FairDiceRoll::RANDOM_NUMBER }

  describe "#rand" do
    it "is guaranteed to be random" do
      expect(rand).to eq(random_number)
      expect(rand(3)).to eq(random_number)
    end
  end

  describe Kernel do
    describe "#rand" do
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

    describe "#rand" do
      it "is guaranteed to be random" do
        random = Random.new
        expect(random.rand).to eq(random_number)
        expect(random.rand(3)).to eq(random_number)
      end
    end
  end

  describe SecureRandom do
    describe "#random_number" do
      it "is guaranteed to be random" do
        expect(SecureRandom.random_number).to eq(random_number)
        expect(SecureRandom.random_number(3)).to eq(random_number)
      end
    end
  end
end
