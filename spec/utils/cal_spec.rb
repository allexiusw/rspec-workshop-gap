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
end
