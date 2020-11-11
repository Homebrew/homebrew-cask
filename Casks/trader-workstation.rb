cask "trader-workstation" do
  version "978.2h"
  sha256 "08c9557e995625166b0a45905043a73611cc5b76d1b0a891347084da8fce0ae1"

  url "https://download2.interactivebrokers.com/installers/tws/stable-standalone/tws-stable-standalone-macosx-x64.dmg"
  name "Trader Workstation"
  desc "Trading software"
  homepage "https://www.interactivebrokers.com/"

  installer script: {
    executable: "#{staged_path}/Trader Workstation #{version.major} Installer.app/Contents/MacOS/JavaApplicationStub",
    args:       ["-q"],
  }

  uninstall quit:   "com.install4j.5889-6375-8446-2021.22",
            script: {
              executable: "#{ENV["HOME"]}/Applications/Trader Workstation #{version.major}/Trader Workstation #{version.major} Uninstaller.app/Contents/MacOS/JavaApplicationStub",
              args:       ["-q"],
            }
end
