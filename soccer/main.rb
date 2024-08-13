require_relative 'config/boot'

scoreboard = Soccer::Scoreboard.new
team_better_ratio = scoreboard.better_goals_ratio

puts "The team with better goals ratio is: #{team_better_ratio.team}."
puts "With a goals ratio of: #{team_better_ratio.goals_difference} goals."
