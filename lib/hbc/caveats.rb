class Hbc::Caveats
  def initialize(block)
    @block = block
  end

  def eval_and_print(cask)
    dsl = Hbc::DSL::Caveats.new(cask)
    retval = dsl.instance_eval(&@block)
    return if retval.nil?
    puts retval.to_s.sub(%r{[\r\n \t]*\Z}, "\n\n")
  end
end
