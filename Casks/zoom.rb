cask "zoom" do
  version "5.8.0.1780"

  if Hardware::CPU.intel?
    sha256 "2d032fb2317fa58f451aad3e68a9c6a1a192023ce9643aa97972443ef50a21ee"

    url "https://cdn.zoom.us/prod/#{version}/Zoom.pkg"
  else
    sha256 "4edd99c2d657b6e9870f3231fd70fda96323f4ce010936482af95a92f92e5137"

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

  postflight do
    # Description: Ensure console variant of postinstall is non-interactive.
    # This is because `open "$APP_PATH"&` is called from the postinstall
    # script of the package and we don't want any user intervention there.
    retries ||= 3
    ohai "The Zoom package postinstall script launches the Zoom app" unless retries < 3
    ohai "Attempting to close zoom.us.app to avoid unwanted user intervention" unless retries < 3
    return unless system_command "/usr/bin/pkill", args: ["-f", "/Applications/zoom.us.app"]

    rescue RuntimeError
      sleep 1
      retry unless (retries -= 1).zero?
      opoo "Unable to forcibly close zoom.us.app"
  end

  uninstall signal:  ["KILL", "us.zoom.xos"],
            pkgutil: "us.zoom.pkg.videomeeting",
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
    "~/Library/Group Containers/BJ4HAAB9B3.ZoomClient3rd",
    "~/Library/Mobile Documents/iCloud~us~zoom~videomeetings",
    "~/Library/Preferences/ZoomChat.plist",
    "~/Library/Preferences/us.zoom.airhost.plist",
    "~/Library/Preferences/us.zoom.caphost.plist",
    "~/Library/Preferences/us.zoom.Transcode.plist",
    "~/Library/Preferences/us.zoom.xos.Hotkey.plist",
    "~/Library/Preferences/us.zoom.xos.plist",
    "~/Library/Safari/PerSiteZoomPreferences.plist",
    "~/Library/SafariTechnologyPreview/PerSiteZoomPreferences.plist",
    "~/Library/Saved Application State/us.zoom.xos.savedState",
  ]
end
