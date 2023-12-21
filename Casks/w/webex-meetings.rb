cask "webex-meetings" do
  version :latest
  sha256 :no_check

  on_arm do
    url "https://akamaicdn.webex.com/client/Cisco_Webex_Meetings.pkg"
  end
  on_intel do
    url "https://akamaicdn.webex.com/client/webexapp.dmg"
  end

  name "Webex Meetings"
  desc "Video communication and virtual meeting platform"
  homepage "https://www.webex.com/"

  pkg "Cisco_Webex_Meetings.pkg"

  uninstall launchctl: "com.webex.pluginagent",
            quit:      [
              "com.cisco.webex.webexmta",
              "com.cisco.webexmeetingsapp",
            ],
            pkgutil:   "mc.mac.webex.com",
            delete:    [
              "/Applications/Cisco Webex Meetings.app",
              "/Applications/Webex", # App seems to get installed here on macOS < 10.15
              "~/Library/Application Support/WebEx Folder/Add-ons/Cisco WebEx Start.app",
              "~/Library/Application Support/WebEx Folder/atgpcext64.bundle",
              "~/Library/Application Support/WebEx Folder/T33_64UMC*/Meeting Center.app",
              "~/Library/Application Support/WebEx Folder/T33_64UMC*/WebexAppLauncher.app",
              "~/Library/Internet Plug-Ins/WebEx64.plugin",
            ],
            rmdir:     "~/Library/Application Support/WebEx Folder/T33_64UMC*"

  zap trash: [
    "~/Library/Application Support/WebEx Folder",
    "~/Library/Caches/com.cisco.webex.Cisco-WebEx-Start",
    "~/Library/Caches/com.cisco.webexmeetingsapp",
    "~/Library/Caches/com.cisco.webexmta",
  ]
end
