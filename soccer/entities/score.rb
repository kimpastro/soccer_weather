module Soccer
  class Score
    attr_reader :team, :goals_for, :goals_against

    DEFAULTS = {
      team: '',
      goals_for: 0,
      goals_against: 0
    }.freeze

    def initialize(args = {})
      set_defaults(args)
    end

    def goals_difference
      @goals_difference ||= goals_for - goals_against
    end

    def <=>(other)
      other.goals_difference <=> goals_difference
    end

    private

    def set_defaults(args)
      args = {} if args.nil? || args&.empty?
      params = DEFAULTS.merge(args)

      @team = params[:team]
      @goals_for = params[:goals_for]
      @goals_against = params[:goals_against]
    end
  end
end
