module Soccer
  class Scoreboard
    DATA_FILE = 'data/soccer.dat'

    def initialize
      @data = File.readlines(DATA_FILE)
    end

    def results
      score_data
    end

    def better_goals_ratio
      results.sort.first
    end

    private

    def score_data
      @data.map do |line|
        destructed = split_line(line)
        next unless valid_score?(destructed)

        score_params = parse_score_params(destructed)
        Soccer::Score.new(score_params)
      end.compact
    end

    def split_line(line)
      line.strip.gsub(/[.-]/,'').split
    end

    def valid_score?(destructed_line)
      destructed_line.first.to_i > 0
    end

    def parse_score_params(destructed_line)
      {
        team: destructed_line[1],
        goals_for: destructed_line[6].to_i,
        goals_against: destructed_line[7].to_i
      }
    end
  end
end
