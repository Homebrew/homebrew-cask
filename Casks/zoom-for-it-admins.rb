cask "zoom-for-it-admins" do
  version "5.3.52651.0920"
  sha256 "4ae739e6e3bfb1ea40fe7a53decc258c1f1548f096843c5cb6e59379dbb87dcd"

  # d11yldzmag5yn.cloudfront.net/ was verified as official when first introduced to the cask
  url "https://d11yldzmag5yn.cloudfront.net/prod/#{version}/ZoomInstallerIT.pkg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://zoom.us/client/latest/Zoom.pkg"
  name "Zoom for IT Admins"
  desc "Video communication and virtual meeting platform"
  homepage "https://support.zoom.us/hc/en-us/articles/115001799006-Mass-Deployment-with-Preconfigured-Settings-for-Mac"

  auto_updates true
  conflicts_with cask: "zoomus"

  pkg "ZoomInstallerIT.pkg"

  uninstall signal:  ["KILL", "us.zoom.xos"],
            pkgutil: "us.zoom.pkg.videmeeting",
            delete:  [
              "/Applications/zoom.us.app",
              "/Library/Audio/Plug-Ins/HAL/ZoomAudioDevice.driver",
              "/Library/Internet Plug-Ins/ZoomUsPlugIn.plugin",
              "/Library/Logs/DiagnosticReports/zoom.us*",
            ]

  zap trash: [
    "/Library/Preferences/us.zoom.config.plist",
    "~/.zoomus",
    "~/Desktop/Zoom",
    "~/Documents/Zoom",
    "~/Library/Application Support/CloudDocs/session/containers/iCloud.us.zoom.videomeetings",
    "~/Library/Application Support/CloudDocs/session/containers/iCloud.us.zoom.videomeetings.plist",
    "~/Library/Application Support/CrashReporter/zoom.us*",
    "~/Library/Application Support/zoom.us",
    "~/Library/Caches/us.zoom.xos",
    "~/Library/Cookies/us.zoom.xos.binarycookies",
    "~/Library/Internet Plug-Ins/ZoomUsPlugIn.plugin",
    "~/Library/Logs/zoom.us",
    "~/Library/Logs/zoominstall.log",
    "~/Library/Logs/ZoomPhone",
    "~/Library/Mobile Documents/iCloud~us~zoom~videomeetings",
    "~/Library/Preferences/ZoomChat.plist",
    "~/Library/Preferences/us.zoom.airhost.plist",
    "~/Library/Preferences/us.zoom.xos.Hotkey.plist",
    "~/Library/Preferences/us.zoom.xos.plist",
    "~/Library/Safari/PerSiteZoomPreferences.plist",
    "~/Library/SafariTechnologyPreview/PerSiteZoomPreferences.plist",
    "~/Library/Saved Application State/us.zoom.xos.savedState",
  ]
end
