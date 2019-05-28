class GraphNode

    attr_accessor :val, :neighbors

    def initialize(val)
        self.val = val
        self.neighbors = []
    end

end