cask "zoom" do
  arch = Hardware::CPU.intel? ? "" : "arm64/"

  version "5.9.0.3377"

  if Hardware::CPU.intel?
    sha256 "d57ff52d9eddcd61a4fd39b228d756f76cb9390da9c8f205a6dbc25fee9801db"
  else
    sha256 "4e9d031e4ba2b8c0af0af8ccc0b740ff3c61cc04507b81c48b132e3f1f396402"
  end

  url "https://cdn.zoom.us/prod/#{version}/#{arch}Zoom.pkg"
  name "Zoom.us"
  desc "Video communication and virtual meeting platform"
  homepage "https://www.zoom.us/"

  livecheck do
    url "https://zoom.us/client/latest/Zoom.pkg"
    strategy :header_match
  end

  auto_updates true
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

  uninstall signal:    ["KILL", "us.zoom.xos"],
            pkgutil:   "us.zoom.pkg.videomeeting",
            launchctl: "us.zoom.ZoomDaemon",
            delete:    [
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
