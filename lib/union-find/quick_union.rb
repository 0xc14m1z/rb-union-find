module UnionFind

  class QuickUnion < QuickFind

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
