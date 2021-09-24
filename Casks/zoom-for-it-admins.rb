cask "zoom-for-it-admins" do
  version "5.8.0.1780"
  sha256 "a04b858aa6c2473687780ab35c3f66290f80a406b10bb327d2ee1742313c628a"

  url "https://cdn.zoom.us/prod/#{version}/ZoomInstallerIT.pkg"
  name "Zoom for IT Admins"
  desc "Video communication and virtual meeting platform"
  homepage "https://support.zoom.us/hc/en-us/articles/115001799006-Mass-Deployment-with-Preconfigured-Settings-for-Mac"

  livecheck do
    url "https://zoom.us/client/latest/Zoom.pkg"
    strategy :header_match
  end

  # Do not add `auto_updates`. While supporting an auto-update mechanism, this software is more inconvenient than most
  # See https://github.com/Homebrew/homebrew-cask/pull/93083

  conflicts_with cask: "zoom"

  pkg "ZoomInstallerIT.pkg"

  uninstall signal:    ["KILL", "us.zoom.xos"],
            pkgutil:   "us.zoom.pkg.videomeeting",
            launchctl: "us.zoom.ZoomDaemon",
            delete:    [
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
