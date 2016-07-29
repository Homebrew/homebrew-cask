require "hbc/topological_hash"

class Hbc::CaskDependencies
  attr_reader :cask, :graph, :sorted

  def initialize(cask)
    @cask = cask
    @graph = graph_dependencies
    @sorted = sort
  end

  def graph_dependencies
    deps_in = ->(csk) { csk.depends_on ? csk.depends_on.cask || [] : [] }
    walk = lambda { |acc, deps|
      deps.each do |dep|
        next if acc.key?(dep)
        succs = deps_in.call Hbc.load(dep)
        acc[dep] = succs
        walk.call(acc, succs)
      end
      acc
    }

    graphed = walk.call({}, @cask.depends_on.cask)
    Hbc::TopologicalHash[graphed]
  end

  def sort
    @graph.tsort
  rescue TSort::Cyclic
    raise Hbc::CaskCyclicCaskDependencyError, @cask.token
  end
end
