module UnionFind

  class PathCompressedWeightedQuickUnion < WeightedQuickUnion

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
