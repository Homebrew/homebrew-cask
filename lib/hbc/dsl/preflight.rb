class Hbc::DSL::Preflight < Hbc::DSL::Base
  include Hbc::Staged

  def method_missing(method, *args)
    Hbc::Utils.method_missing_message(method, @cask.to_s, 'preflight')
    return nil
  end
end
