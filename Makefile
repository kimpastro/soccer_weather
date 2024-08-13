# Target to run the Ruby script for soccer
soccer:
	@ruby soccer/main.rb

# Target to run the Ruby script for weather
weather:
	@ruby weather/main.rb

# Declare that 'soccer' and 'weather' are phony targets
.PHONY: soccer weather
