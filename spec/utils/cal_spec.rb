# frozen_string_literal: true

require './src/utils/calc'

describe Calc do
  context 'with invalid parameters' do
    it 'valid? should return false' do
      subject = described_class.new(-1, 1)
      expect(subject.valid?).to be_falsey
    end

    it 'valid should raise exception' do
      subject = described_class.new(-1, 1)
      expect { subject.valid }.to raise_error(StandardError)
    end
  end

  context 'with valid parameters' do
    subject = described_class.new(5, 5)
    let(:valid) { subject.valid }
    let(:sum) { subject.sum }
    it 'sum should return 10' do
      expect(sum).to eq(10)
    end

    it 'sum should return 16' do
      subject = described_class.new(8, 8)
      expect { subject.valid }.not_to raise_error(StandardError)
      expect(sum).to eq(16)
    end

    it 'substract should return 5' do
      subject = described_class.new(10, 5)
      expect(subject.substract).to eq(5)
    end
  end
end
