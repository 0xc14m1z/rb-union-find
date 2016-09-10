module UnionFind

  class QuickFind < Interface

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
      check_value = @components[a]
      for k in @components.keys
        @components[k] = b if @components[k] == check_value
      end
    end

    def connected?(a, b)
      @components[a] == @components[b]
    end

  end

end
