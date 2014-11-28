require 'cask/staged'

class Cask::DSL::UninstallPreflight < Cask::DSL::Base
  include Cask::Staged

  def remove_accessibility_access
    if MacOS.version >= :mavericks
      system_command("sqlite3", :args => [
        "/Library/Application\ Support/com.apple.TCC/TCC.db",
        "DELETE FROM access WHERE client='#{bundle_identifier}';"
      ], :sudo => true)
    end
  end

  def method_missing(method, *args)
    Cask::Utils.method_missing_message(method, @cask.to_s, 'uninstall_preflight')
    return nil
  end
end
