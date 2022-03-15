cask "timemachineeditor" do
  version "5.1.9,213"
  sha256 :no_check

  url "https://tclementdev.com/timemachineeditor/TimeMachineEditor.pkg"
  name "TimeMachineEditor"
  desc "Utility to change the default backup interval of Time Machine"
  homepage "https://tclementdev.com/timemachineeditor/"

  pkg "TimeMachineEditor.pkg"

  uninstall launchctl: "com.tclementdev.timemachineeditor.scheduler",
            pkgutil:   "com.tclementdev.pkg.timemachineeditor"
end
