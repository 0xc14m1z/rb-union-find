module UnionFind

  class QuickUnion < Interface

    attr_reader :data

    def initialize
      @data = Hash.new
    end

    def count
      @data.keys.size
    end

    def add(obj)
      @data[obj] = obj
    end

    def connect(a, b)
      @data[root(a)] = root(b)
    end

    def connected?(a, b)
      root(a) == root(b)
    end

    private

      def root(obj)
        parent = @data[obj]
        parent = @data[parent] while @data[parent] != parent
        parent
      end

  end

end
