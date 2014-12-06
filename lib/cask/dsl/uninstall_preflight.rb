require 'cask/staged'

class Cask::DSL::UninstallPreflight < Cask::DSL::Base
  include Cask::Staged

  def method_missing(method, *args)
    Cask::Utils.method_missing_message(method, @cask.to_s, 'uninstall_preflight')
    return nil
  end
end
