class Map

    def initialize
        @underlying_arr = []
    end

    def set(key, value)
        @underlying_arr << [key, value]
    end

end