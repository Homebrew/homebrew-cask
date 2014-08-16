module Cask::DSL::Installed
  def info_plist
    "#{destination_path}/#{@cask.artifacts[:link].first.first}/Contents/Info.plist"
  end

  def plist_exec(cmd)
    system_command("/usr/libexec/PlistBuddy", :args => ["-c", cmd, info_plist])
  end

  def plist_set(key, value)
    plist_exec("Set #{key} #{value}")
  end

  def bundle_identifier
    plist_exec("Print CFBundleIdentifier")
  end
end
