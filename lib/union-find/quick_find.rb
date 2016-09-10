module UnionFind

  class QuickFind < Interface

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
      check_value = @data[a]
      for k in @data.keys
        @data[k] = b if @data[k] == check_value
      end
    end

    def connected?(a, b)
      @data[a] == @data[b]
    end

  end

end
