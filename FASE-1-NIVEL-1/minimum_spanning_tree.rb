class Graph
  attr_reader :vertices, :edges

  def initialize(vertices)
    @vertices = vertices
    @edges = []
  end

  def add_edge(u, v, w)
    @edges << [u, v, w]
  end

  def density
    num_edges = @edges.length
    max_edges = @vertices * (@vertices - 1) / 2
    num_edges.to_f / max_edges
  end

  def minimum_spanning_tree
    if density > 0.5
      puts "Usando Kruskal para um grafo denso"
      kruskal_mst
    else
      puts "Usando Prim para um grafo esparso"
      prim_mst
    end
  end

  def kruskal_mst

  end

  def prim_mst

  end

  private

  def find(parent, node)
    if parent[node] != node
      parent[node] = find(parent, parent[node])
    end
    parent[node]
  end
  def union(parent, x, y)
    root_x = find(parent, x)
    root_y = find(parent, y)
    parent[root_x] = root_y
  end
end
