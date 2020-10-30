#write your code here Formula	
#(32°F − 32) × 5/9 = 0°C

# Conver to celsius
def ftoc(fahrinheit)
    return (fahrinheit - 32) * 5/9
end

# Convert to fahrinheit
def ctof(celsius = 37)
    return (celsius.to_f * 9/5) + 32
end