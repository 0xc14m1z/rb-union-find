module UnionFind

  class Interface

    def add(obj);           raise NotImplementedError end
    def connect(a, b);      raise NotImplementedError end
    def connected?(a, b);   raise NotImplementedError end

  end

end
