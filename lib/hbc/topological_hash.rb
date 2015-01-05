require 'tsort'

# a basic topologically sortable hashmap
class Hbc::TopologicalHash < Hash
  include TSort

  alias tsort_each_node each_key

  def tsort_each_child(node, &block)
    fetch(node).each(&block)
  end
end
