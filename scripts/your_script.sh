#!/usr/bin/env bash

# Get CPU temperature using osx-cpu-temp
temp_c=$(osx-cpu-temp -c)

# Extract the numeric value from the output
temp_c_value=$(echo $temp_c | grep -o '[0-9]*\.[0-9]*')

# Convert Celsius to Fahrenheit
temp_f=$(echo "scale=1; ($temp_c_value * 9/5) + 32" | bc)

# Display formatted output
echo "Celsius: $temp_c_value °C"
echo "Fahrenheit: $temp_f °F"
