class GraphNode

    attr_accessor :val, :neighbors

    def initialize(val)
        self.val = val
        self.neighbors = []
    end

end

def bfs(starting_node, target_value, visited = Set.new())
    return starting_node if starting_node.val = target_value
    return nil if visited.include?(starting_node.to_sym)

    visited.add(starting_node.to_sym)

    starting_node.neighbors.each do |neighbor| 
        bfs(neighbor, target_value, visited)
    end
end