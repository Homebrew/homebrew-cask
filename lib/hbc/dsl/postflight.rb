require 'hbc/staged'

class Hbc::DSL::Postflight < Hbc::DSL::Base
  include Hbc::Staged

  def suppress_move_to_applications(options = {})
    permitted_keys = [:key]
    unknown_keys = options.keys - permitted_keys
    unless unknown_keys.empty?
      opoo %Q{Unknown arguments to suppress_move_to_applications -- #{unknown_keys.inspect} (ignored). Running "brew update; brew cleanup; brew cask cleanup" will likely fix it.}
    end
    key = options[:key] || 'moveToApplicationsFolderAlertSuppress'
    begin
      @command.run!('/usr/bin/defaults', :args => ['write', bundle_identifier, key, '-bool', 'true'])
    rescue StandardError => e
      raise Hbc::CaskError.new("#{@cask.token}: 'suppress_move_to_applications' failed with: #{e}")
    end
  end

  def method_missing(method, *args)
    Hbc::Utils.method_missing_message(method, @cask.to_s, 'postflight')
    return nil
  end
end
