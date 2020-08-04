cask "zoom-for-it-admins" do
  version "5.2.42625.0804"
  sha256 "8364b1c7f6ec1a2a4769adadd04e2609cc02ba4c42a3d3e565e43f4a2546cf18"

  # d11yldzmag5yn.cloudfront.net/ was verified as official when first introduced to the cask
  url "https://d11yldzmag5yn.cloudfront.net/prod/#{version}/ZoomInstallerIT.pkg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://zoom.us/client/latest/Zoom.pkg"
  name "Zoom for IT Admins"
  homepage "https://support.zoom.us/hc/en-us/articles/115001799006-Mass-Deployment-with-Preconfigured-Settings-for-Mac"

  auto_updates true
  conflicts_with cask: "zoomus"

  pkg "ZoomInstallerIT.pkg"

  postflight do
    set_ownership "~/Library/Application Support/zoom.us"
  end

  uninstall quit:       "us.zoom.ZoomOpener",
            signal:     ["KILL", "us.zoom.xos"],
            pkgutil:    "us.zoom.pkg.videmeeting",
            login_item: "ZoomOpener",
            script:     {
              executable:   "/usr/bin/defaults",
              args:         ["delete", "us.zoom.xos"],
              must_succeed: false,
              sudo:         true,
            },
            delete:     [
              "/Applications/zoom.us.app",
              "/Library/Audio/Plug-Ins/HAL/ZoomAudioDevice.driver",
              "/Library/Internet Plug-Ins/ZoomUsPlugIn.plugin",
              "/Library/Logs/DiagnosticReports/zoom.us*",
              "~/.zoomus/ZoomOpener.app",
              "~/Library/Internet Plug-Ins/ZoomUsPlugIn.plugin",
            ]

  zap trash: [
    "~/.zoomus",
    "~/Desktop/Zoom",
    "~/Documents/Zoom",
    "~/Library/Application Support/CloudDocs/session/containers/iCloud.us.zoom.videomeetings",
    "~/Library/Application Support/CloudDocs/session/containers/iCloud.us.zoom.videomeetings.plist",
    "~/Library/Application Support/zoom.us",
    "~/Library/Caches/us.zoom.xos",
    "~/Library/Cookies/us.zoom.xos.binarycookies",
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
