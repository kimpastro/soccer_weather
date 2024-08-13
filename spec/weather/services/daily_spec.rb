require 'spec_helper'

RSpec.describe Weather::Daily do
  describe '#temperatures' do
    subject { described_class.new }

    context '#temperatures' do
      it 'should return an Array of Score' do
        expect(subject.temperatures).to all(be_a(Weather::Temperature))
      end
    end

    # Check data/w_data.dat
    context '#minimum_variation' do
      it 'should return day 14' do
        expect(subject.minimum_variation.day).to eq('14')
      end
    end
  end
end
