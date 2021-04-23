cask "zoom" do
  version "5.6.3.706"

  if Hardware::CPU.intel?
    sha256 "f027f7db99712c8b25626639d04d91b0439ff7cac61acda50d3b63c20140e7fe"

    url "https://cdn.zoom.us/prod/#{version}/Zoom.pkg"
  else
    sha256 "16a3c273799a3f39354f34fed4ea28448f4088c7980390bd354adc1b7795a850"

    url "https://cdn.zoom.us/prod/#{version}/arm64/Zoom.pkg"
  end

  name "Zoom.us"
  desc "Video communication and virtual meeting platform"
  homepage "https://www.zoom.us/"

  livecheck do
    url "https://zoom.us/client/latest/Zoom.pkg"
    strategy :header_match
  end

  # Do not add `auto_updates`. While supporting an auto-update mechanism, this software is more inconvenient than most
  # See https://github.com/Homebrew/homebrew-cask/pull/93083

  conflicts_with cask: "zoom-for-it-admins"

  pkg "Zoom.pkg"

  uninstall signal:  ["KILL", "us.zoom.xos"],
            pkgutil: "us.zoom.pkg.videmeeting",
            delete:  [
              "/Applications/zoom.us.app",
              "/Library/Internet Plug-Ins/ZoomUsPlugIn.plugin",
              "/Library/Logs/DiagnosticReports/zoom.us*",
            ]

  zap trash: [
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
