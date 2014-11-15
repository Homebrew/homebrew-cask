module Cask::Staged
  def info_plist
    "#{staged_path}/#{@cask.artifacts[:app].first.first}/Contents/Info.plist"
  end

  def plist_exec(cmd)
    # todo: don't use external interface system_command
    system_command("/usr/libexec/PlistBuddy", :args => ["-c", cmd, info_plist])
  end

  def plist_set(key, value)
    plist_exec("Set #{key} #{value}")
  end

  def bundle_identifier
    plist_exec("Print CFBundleIdentifier")
  end
end
