module UnionFind

  class PathCompressedWeightedQuickUnion < Interface

    attr_reader :components
    attr_reader :weights

    def initialize
      @components = Hash.new
      @weights = Hash.new
    end

    def count
      @components.keys.size
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

    def connected?(a, b)
      root(a) == root(b)
    end

    private

      def root(obj)
        while @components[obj] != obj
          @components[obj] = @components[@components[obj]]    # updates pointer of the current element to it's grandfather
          obj = @components[obj]
        end
        obj
      end

  end

end
