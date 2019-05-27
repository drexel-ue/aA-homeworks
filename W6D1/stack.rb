class Stack
    
    def initialize
        @underlying_arr = []
    end

    def push(el)
        @underlying_arr << el
        el
    end

    def pop
        @underlying_arr.pop
    end

    def peek
        @underlying_arr.last
    end

    private

    attr_reader :underlying_arr

end