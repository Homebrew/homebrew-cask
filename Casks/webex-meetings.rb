cask "webex-meetings" do
  version :latest
  sha256 :no_check

  url "https://akamaicdn.webex.com/client/webexapp.dmg"
  name "Webex Meetings"
  homepage "https://www.webex.com/"

  pkg "Cisco Webex Meetings.pkg"

  uninstall quit:      [
    "com.cisco.webexmeetingsapp",
    "com.cisco.webex.webexmta",
  ],
            delete:    [
              "/Applications/Cisco Webex Meetings.app",
              "/Applications/Webex", # App seems to get installed here on macOS < 10.15
              "~/Library/Internet Plug-Ins/WebEx64.plugin",
              "~/Library/Application Support/WebEx Folder/atgpcext64.bundle",
              "~/Library/Application Support/WebEx Folder/Add-ons/Cisco WebEx Start.app",
              "~/Library/Application Support/WebEx Folder/T33_64UMC*/Meeting Center.app",
              "~/Library/Application Support/WebEx Folder/T33_64UMC*/WebexAppLauncher.app",
            ],
            launchctl: "com.webex.pluginagent",
            pkgutil:   "mc.mac.webex.com",
            rmdir:     "~/Library/Application Support/WebEx Folder/T33_64UMC*"

  zap trash: [
    "~/Library/Application Support/WebEx Folder",
    "~/Library/Caches/com.cisco.webexmeetingsapp",
    "~/Library/Caches/com.cisco.webexmta",
    "~/Library/Caches/com.cisco.webex.Cisco-WebEx-Start",
  ]
end
