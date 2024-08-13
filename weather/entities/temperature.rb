module Weather
  class Temperature
    attr_reader :day, :min_temp, :max_temp

    DEFAULTS = {
      day: '',
      min_temp: 0,
      max_temp: 0
    }.freeze

    def initialize(args = {})
      set_defaults(args)
    end

    def variation
      @variation ||= max_temp - min_temp
    end

    def <=>(other)
      other.variation <=> variation
    end

    private

    def set_defaults(args)
      args = {} if args.nil? || args&.empty?
      params = DEFAULTS.merge(args)

      @day = params[:day]
      @min_temp = params[:min_temp]
      @max_temp = params[:max_temp]
    end
  end
end
