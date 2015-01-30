class Hbc::DSL::ConflictsWith < Hbc::DSL::Dependency
  def initialize
    super(conflict: true)
  end
end
