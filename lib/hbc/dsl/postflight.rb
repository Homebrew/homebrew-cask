require 'hbc/staged'

class Hbc::DSL::Postflight < Hbc::DSL::Base
  include Hbc::Staged

  def suppress_move_to_applications(options = {})
    # TODO: Remove from all casks because it is no longer needed
  end

  def method_missing(method, *args)
    Hbc::Utils.method_missing_message(method, @cask.to_s, 'postflight')
    return nil
  end
end
