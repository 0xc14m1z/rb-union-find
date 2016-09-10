module UnionFind

  class QuickUnion < Interface

    attr_reader :components

    def initialize
      @components = Hash.new
    end

    def count
      @components.keys.size
    end

    def add(obj)
      @components[obj] = obj
    end

    def connect(a, b)
      @components[root(a)] = root(b)
    end

    def connected?(a, b)
      root(a) == root(b)
    end

    private

      def root(obj)
        parent = @components[obj]
        parent = @components[parent] while @components[parent] != parent
        parent
      end

  end

end
