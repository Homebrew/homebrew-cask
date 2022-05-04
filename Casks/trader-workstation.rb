cask "trader-workstation" do
  version "10.15.1f"
  sha256 :no_check

  if Hardware::CPU.intel?
    url "https://download2.interactivebrokers.com/installers/tws/latest/tws-latest-macosx-x64.dmg"
  else
    url "https://download2.interactivebrokers.com/installers/tws/latest/tws-latest-macos-arm.dmg"
  end

  name "Trader Workstation"
  desc "Trading software"
  homepage "https://www.interactivebrokers.com/"

  livecheck do
    url "https://download2.interactivebrokers.com/installers/tws/latest/version.json"
    regex(/"buildVersion"\s*:\s*"(\d+(?:\.\d+)+[a-z]*)"/i)
  end

  installer script: {
    executable: "#{staged_path}/Trader Workstation Installer.app/Contents/MacOS/JavaApplicationStub",
    args:       ["-q"],
  }

  uninstall quit:   "com.install4j.5889-6375-8446-2021",
            script: {
              executable: "/Applications/Trader Workstation/Trader Workstation Uninstaller.app/Contents/MacOS/JavaApplicationStub",
              args:       ["-q"],
            }
end
