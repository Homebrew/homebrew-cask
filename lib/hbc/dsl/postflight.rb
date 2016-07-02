require "hbc/staged"

class Hbc::DSL::Postflight < Hbc::DSL::Base
  include Hbc::Staged

  def suppress_move_to_applications(options = {})
    # TODO: Remove from all casks because it is no longer needed
  end
end
