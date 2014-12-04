require 'cask/staged'

class Cask::DSL::Postflight < Cask::DSL::Base
  include Cask::Staged

  def suppress_move_to_applications(options = {})
    key = options[:key] || 'moveToApplicationsFolderAlertSuppress'
    @command.run!('/usr/bin/defaults', :args => ['write', bundle_identifier, key, '-bool', 'true'])
  end

  def enable_accessibility_access
    if MacOS.version >= :mavericks
      @command.run!('/usr/bin/sqlite3',
                    :args => [
                              Cask.tcc_db,
                              "INSERT INTO access VALUES('kTCCServiceAccessibility','#{bundle_identifier}',0,1,1,NULL);",
                             ],
                    :sudo => true)
    else
      @command.run!('/usr/bin/touch',
                    :args => [Cask.pre_mavericks_accessibility_dotfile],
                    :sudo => true)
    end
  end

  def method_missing(method, *args)
    Cask::Utils.method_missing_message(method, @cask.to_s, 'postflight')
    return nil
  end
end
