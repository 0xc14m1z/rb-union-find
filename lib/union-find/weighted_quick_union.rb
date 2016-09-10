module UnionFind

  class WeightedQuickUnion < QuickUnion

    attr_reader :weights

    def initialize
      @components = Hash.new
      @weights = Hash.new
    end

    def add(obj)
      @components[obj] = obj
      @weights[obj] = 1
    end

    def connect(a, b)
      root_a = root(a)
      root_b = root(b)
      if @weights[root_a] < @weights[root_b]
        @components[root_a] = root_b
        @weights[root_b] += @weights[root_a]
      else
        @components[root_b] = root_a
        @weights[root_a] += @weights[root_b]
      end
    end

    private

      def root(obj)
        obj = @components[obj] while @components[obj] != obj
        obj
      end

  end

end
