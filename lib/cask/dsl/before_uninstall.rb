module Cask::DSL::BeforeUninstall
  include Cask::DSL::Installed

  def remove_accessibility_access
    if MacOS.version >= :mavericks
      system_command("sqlite3", :args => [
        "/Library/Application\ Support/com.apple.TCC/TCC.db",
        "DELETE FROM access WHERE client='#{bundle_identifier}';"
      ], :sudo => true)
    end
  end
end
