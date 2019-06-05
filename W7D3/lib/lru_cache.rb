class LRUCache

    def initialize(max)
        @cache = Array.new
        @max = max
    end

    def add(el)
      # adds element to cache according to LRU principle
      @cache << el
    end

    def count
      # returns number of elements currently in cache
    end

    def show
      # shows the items in the cache, with the LRU item first
        @cache
    end

    private
    # helper methods go here!

end