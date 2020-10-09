cask "timemachineeditor" do
  version "5.1.6"
  sha256 "c15d2aa072cfcb974e7991863d5ba0380df2a874aaf25d285c1ab462068dbb36"

  url "https://tclementdev.com/timemachineeditor/TimeMachineEditor.pkg"
  name "TimeMachineEditor"
  desc "Utility to change the default backup interval of Time Machine"
  homepage "https://tclementdev.com/timemachineeditor/"

  pkg "TimeMachineEditor.pkg"
    
  uninstall pkgutil: "com.tclementdev.pkg.timemachineeditor"
end
