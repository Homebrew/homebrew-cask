cask "webex-meetings" do
  version "42.7.0.22904"
  sha256 :no_check

  if Hardware::CPU.intel?
    url "https://binaries.webex.com/WebexTeamsDesktop-MACOS-Gold/Webex.dmg"
  else
    url "https://binaries.webex.com/WebexDesktop-MACOS-Apple-Silicon-Gold/Webex.dmg"
  end

  name "Webex Meetings"
  desc "Video communication and virtual meeting platform"
  homepage "https://www.webex.com/"

  livecheck do
    url "https://help.webex.com/en-us/article/mqkve8/Webex-App-|-Release-notes"
    regex(/Mac[._-—](\d+(?:\.\d+)+)/i)
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  uninstall quit:      [
              "com.cisco.webex.webexmta",
              "com.cisco.webexmeetingsapp",
            ],
            delete:    [
              "/Applications/Cisco Webex Meetings.app",
              "/Applications/Webex", # App seems to get installed here on macOS < 10.15
              "~/Library/Application Support/WebEx Folder/Add-ons/Cisco WebEx Start.app",
              "~/Library/Application Support/WebEx Folder/atgpcext64.bundle",
              "~/Library/Application Support/WebEx Folder/T33_64UMC*/Meeting Center.app",
              "~/Library/Application Support/WebEx Folder/T33_64UMC*/WebexAppLauncher.app",
              "~/Library/Internet Plug-Ins/WebEx64.plugin",
            ],
            launchctl: "com.webex.pluginagent",
            pkgutil:   "mc.mac.webex.com",
            rmdir:     "~/Library/Application Support/WebEx Folder/T33_64UMC*"

  zap trash: [
    "~/Library/Application Support/WebEx Folder",
    "~/Library/Caches/com.cisco.webex.Cisco-WebEx-Start",
    "~/Library/Caches/com.cisco.webexmeetingsapp",
    "~/Library/Caches/com.cisco.webexmta",
  ]
end
