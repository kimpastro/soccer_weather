require 'spec_helper'

RSpec.describe Weather::Temperature do
  subject { described_class.new(params) }

  describe '#initialize' do
    context 'when params is nil' do
      let(:params) { nil }

      it 'should return an instance with default values' do
        expect(subject.day).to be_empty
        expect(subject.min_temp).to be_zero
        expect(subject.max_temp).to be_zero
      end
    end

    context 'when params is empty' do
      let(:params) { '' }

      it 'should return an instance with default values' do
        expect(subject.day).to be_empty
        expect(subject.min_temp).to be_zero
        expect(subject.max_temp).to be_zero
      end
    end

    context 'when params is correct' do
      let(:params) { { day: '10', min_temp: 80, max_temp: 90} }

      it 'should return an instance with default values' do
        expect(subject.day).to eq('10')
        expect(subject.min_temp).to eq(80)
        expect(subject.max_temp).to eq(90)
      end

      it 'should return the correct degree variation' do
        expect(subject.variation).to eq(10)
      end
    end
  end
end
