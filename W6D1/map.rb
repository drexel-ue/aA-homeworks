class Map

    def initialize
        @underlying_arr = []
    end

    def set(key, value)
        @underlying_arr << [key, value]
    end

    def get(key)
        @underlying_arr[@underlying_arr.index { |pair| pair[0] == key }]
    end

end