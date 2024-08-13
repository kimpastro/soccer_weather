require 'spec_helper'

RSpec.describe Soccer::Scoreboard do
  describe '#results' do
    subject { described_class.new }

    context '#results' do
      it 'should return an Array of Score' do
        expect(subject.results).to all(be_a(Soccer::Score))
      end
    end

    # Check data/soccer.dat
    context '#better_goals_ratio' do
      it 'should return Arsenal team' do
        expect(subject.better_goals_ratio.team).to eq('Arsenal')
      end
    end
  end
end
