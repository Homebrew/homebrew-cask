cask "webcamoid" do
  version "9.0.0"
  sha256 "420f695e5bafbc1b9760ee5fb9bb06707cb302ff973975374ce7d857093c85dd"

  url "https://github.com/webcamoid/webcamoid/releases/download/#{version}/webcamoid-portable-mac-#{version}-x86_64.dmg",
      verified: "github.com/webcamoid/webcamoid/"
  name "Webcamoid"
  homepage "https://webcamoid.github.io/"

  app "Webcamoid.app"

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
