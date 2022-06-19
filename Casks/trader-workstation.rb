cask "trader-workstation" do
  version "10.16.1i"
  sha256 :no_check

  arch = Hardware::CPU.intel? ? "x64" : "arm"
  os = Hardware::CPU.intel? ? "macosx" : "macos"
  url "https://download2.interactivebrokers.com/installers/tws/latest/tws-latest-#{os}-#{arch}.dmg"
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

  uninstall_preflight do
    system_command "/usr/bin/pkill", args: ["-f", "/Applications/Trader Workstation/Trader Workstation.app"]
  end

  uninstall quit:   "com.install4j.5889-6375-8446-2021",
            script: {
              executable: "/Applications/Trader Workstation/Trader Workstation Uninstaller.app/Contents/MacOS/JavaApplicationStub",
              args:       ["-q"],
            }
end
