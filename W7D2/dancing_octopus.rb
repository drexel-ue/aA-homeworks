tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

def slow_dance(direction, arr)
    arr.each { |direc| return arr.index(direc) if direc == direction }
end

p slow_dance("up", tiles_array) # => 0

p slow_dance("right-down", tiles_array) # => 3


new_tiles_data_structure = {}
tiles_array.each_with_index { |direc, index| new_tiles_data_structure[direc] = index }

def fast_dance(direction, hash)
    hash[direction]
end

p fast_dance("up", new_tiles_data_structure) # => 0

p fast_dance("right-down", new_tiles_data_structure) # => 3