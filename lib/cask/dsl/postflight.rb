require 'cask/staged'

class Cask::DSL::Postflight < Cask::DSL::Base
  include Cask::Staged

  def suppress_move_to_applications(options = {})
    key = options[:key] || 'moveToApplicationsFolderAlertSuppress'
    @command.run!('/usr/bin/defaults', :args => ['write', bundle_identifier, key, '-bool', 'true'])
  end

  def method_missing(method, *args)
    Cask::Utils.method_missing_message(method, @cask.to_s, 'postflight')
    return nil
  end
end
