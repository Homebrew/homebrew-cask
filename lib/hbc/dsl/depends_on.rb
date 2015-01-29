class Hbc::DSL::DependsOn < Hbc::DSL::Dependency
  def initialize
    super(conflict: false)
  end
end
