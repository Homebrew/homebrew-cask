require 'cask/staged'

class Cask::DSL::UninstallPreflight < Cask::DSL::Base
  include Cask::Staged

  def disable_accessibility_access
    if MacOS.version >= :mavericks
      @command.run!('/usr/bin/sqlite3',
                    :args => [
                              Cask.tcc_db,
                              "DELETE FROM access WHERE client='#{bundle_identifier}';",
                             ],
                    :sudo => true)
    else
      opoo <<-EOS.undent
        Accessibility access was enabled for #{@cask}, but it is not safe to disable
        automatically on this version of OS X.  See System Preferences.
      EOS
    end
  end

  def method_missing(method, *args)
    Cask::Utils.method_missing_message(method, @cask.to_s, 'uninstall_preflight')
    return nil
  end
end
