require_relative 'config/boot'

daily_temp = Weather::DailyReport.new
temp_min_variation = daily_temp.minimum_variation

puts "The day with minimum temperature variation is: #{temp_min_variation.day}."
puts "With a temperature variation of: #{temp_min_variation.variation} degrees."
