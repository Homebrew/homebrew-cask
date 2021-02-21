cask "webcamoid" do
  version "8.8.0"
  sha256 "dccaf3395494f4a0424c73c3df66f12367ca4cd396d70de39bb767542c28c26f"

  url "https://github.com/webcamoid/webcamoid/releases/download/#{version}/webcamoid-portable-#{version}-x86_64.dmg",
      verified: "github.com/webcamoid/webcamoid/"
  appcast "https://github.com/webcamoid/webcamoid/releases.atom"
  name "Webcamoid"
  homepage "https://webcamoid.github.io/"

  app "webcamoid.app"

  uninstall quit:      "com.webcamoidprj.webcamoid",
            launchctl: "org.webcamoid.cmio.AkVCam.Assistant",
            delete:    "/Library/CoreMediaIO/Plug-Ins/DAL/AkVirtualCamera.plugin"

  zap trash: [
    "~/Library/Application Support/CrashReporter/webcamoid_*.plist",
    "~/Library/Logs/DiagnosticReports/webcamoid_*.crash",
    "~/Library/Saved Application State/com.webcamoidprj.webcamoid.savedState",
    "~/Library/Preferences/com.webcamoid.PluginsCache.plist",
    "~/Library/Preferences/com.webcamoid.Webcamoid.plist",
    "~/Library/Preferences/com.webcamoidprj.webcamoid.plist",
    "~/Library/Preferences/org.webcamoid.cmio.AkVCam.Assistant.plist",
    "~/Library/LaunchAgents/org.webcamoid.cmio.AkVCam.Assistant.plist",
    "~/Library/Caches/Webcamoid",
  ]
end
