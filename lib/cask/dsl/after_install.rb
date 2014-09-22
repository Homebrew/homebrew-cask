class Cask::DSL::AfterInstall < Cask::DSL::Base
  include Cask::DSL::Installed

  def suppress_move_to_applications
    system_command("/usr/bin/defaults", :args => ["write", bundle_identifier, "moveToApplicationsFolderAlertSuppress", "-bool", "true"])
  end

  def enable_accessibility_access
    if MacOS.version < :mavericks
      system_command("touch", :args => ["/private/var/db/.AccessibilityAPIEnabled"])
    else
      system_command("sqlite3", :args => [
        "/Library/Application\ Support/com.apple.TCC/TCC.db",
        "INSERT INTO access VALUES('kTCCServiceAccessibility','#{bundle_identifier}',0,1,1,NULL);"
      ], :sudo => true)
    end
  end
end
