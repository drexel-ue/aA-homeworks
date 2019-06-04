tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

def slow_dance(direction, arr)
    arr.each { |direc| return arr.index(direc) if direc == direction }
end

p slow_dance("up", tiles_array) # => 0

p slow_dance("right-down", tiles_array) # => 3