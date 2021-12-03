cask "webex-meetings" do
  version "2111.2607.4112.4"
  sha256 :no_check

  if Hardware::CPU.intel?
    url "https://akamaicdn.webex.com/client/webexapp.dmg"
  else
    url "https://akamaicdn.webex.com/client/Cisco_Webex_Meetings.pkg"
  end

  name "Webex Meetings"
  desc "Video communication and virtual meeting platform"
  homepage "https://www.webex.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  pkg "Cisco_Webex_Meetings.pkg"

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
