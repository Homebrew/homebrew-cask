require 'cask/topological_hash'

class Cask::CaskDependencies
  attr_reader :cask, :graph, :sorted

  def initialize(cask)
    @cask = cask
    @graph = graph_dependencies
    @sorted = sort
  end

  def graph_dependencies
    deps_in = lambda { |csk| csk.depends_on ? csk.depends_on.cask : [] }
    walk = lambda do |acc, deps|
      deps.each do |dep|
        unless acc.key?(dep)
          succs = deps_in.call Cask.load(dep)
          acc[dep] = succs
          walk.call(acc, succs)
        end
      end
      acc
    end

    graphed = walk.call({}, @cask.depends_on.cask)
    TopologicalHash[graphed]
  end

  def sort
    begin
      sorted = @graph.tsort
    rescue TSort::Cyclic
      raise CaskCyclicCaskDependencyError.new(@cask.token)
    end
  end
end
