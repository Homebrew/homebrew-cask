require 'hbc/staged'

class Hbc::DSL::UninstallPreflight < Hbc::DSL::Base
  include Hbc::Staged

  def method_missing(method, *args)
    Hbc::Utils.method_missing_message(method, @cask.to_s, 'uninstall_preflight')
    return nil
  end
end
