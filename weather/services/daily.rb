module Weather
  class Daily
    DATA_FILE = 'data/w_data.dat'

    def initialize
      @data = File.readlines(DATA_FILE)
    end

    def temperatures
      @temperatures ||= fetch_data
    end

    def minimum_variation
      temperatures.sort.last
    end

    private

    def fetch_data
      @data.map do |line|
        destructed = split_line(line)
        next unless valid_temp?(destructed)

        temp_params = parse_temp_params(destructed)
        Weather::Temperature.new(temp_params)
      end.compact
    end

    def split_line(line)
      line.strip.gsub(/[.-]/,'').split
    end

    def valid_temp?(destructed_line)
      destructed_line.first.to_i > 0
    end

    def parse_temp_params(destructed_line)
      {
        day: destructed_line[0],
        max_temp: destructed_line[1].to_i,
        min_temp: destructed_line[2].to_i
      }
    end
  end
end
