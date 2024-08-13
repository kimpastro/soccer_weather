require 'spec_helper'

RSpec.describe Soccer::Score do
  subject { described_class.new(params) }

  describe '#initialize' do
    context 'when params is nil' do
      let(:params) { nil }

      it 'should return an instance with default values' do
        expect(subject.team).to be_empty
        expect(subject.goals_for).to be_zero
        expect(subject.goals_against).to be_zero
      end
    end

    context 'when params is empty' do
      let(:params) { '' }

      it 'should return an instance with default values' do
        expect(subject.team).to be_empty
        expect(subject.goals_for).to be_zero
        expect(subject.goals_against).to be_zero
      end
    end

    context 'when params is correct' do
      let(:params) { { team: 'Barcelona', goals_for: 5, goals_against: 2} }

      it 'should return an instance with default values' do
        expect(subject.team).to eq('Barcelona')
        expect(subject.goals_for).to eq(5)
        expect(subject.goals_against).to eq(2)
      end

      it 'should return the correct goals difference' do
        expect(subject.goals_difference).to eq(3)
      end
    end
  end
end
