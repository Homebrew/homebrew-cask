cask "webcamoid" do
  version "9.0.0"
  sha256 "420f695e5bafbc1b9760ee5fb9bb06707cb302ff973975374ce7d857093c85dd"

  url "https://github.com/webcamoid/webcamoid/releases/download/#{version}/webcamoid-portable-mac-#{version}-x86_64.dmg",
      verified: "github.com/webcamoid/webcamoid/"
  name "Webcamoid"
  desc "Webcam suite"
  homepage "https://webcamoid.github.io/"

  deprecate! date: "2023-12-17", because: :discontinued

  app "Webcamoid.app"

  uninstall launchctl: "org.webcamoid.cmio.AkVCam.Assistant",
            quit:      "com.webcamoidprj.webcamoid",
            delete:    "/Library/CoreMediaIO/Plug-Ins/DAL/AkVirtualCamera.plugin"

  zap trash: [
    "~/Library/Application Support/CrashReporter/webcamoid_*.plist",
    "~/Library/Caches/Webcamoid",
    "~/Library/LaunchAgents/org.webcamoid.cmio.AkVCam.Assistant.plist",
    "~/Library/Logs/DiagnosticReports/webcamoid_*.crash",
    "~/Library/Preferences/com.webcamoid.PluginsCache.plist",
    "~/Library/Preferences/com.webcamoid.Webcamoid.plist",
    "~/Library/Preferences/com.webcamoidprj.webcamoid.plist",
    "~/Library/Preferences/org.webcamoid.cmio.AkVCam.Assistant.plist",
    "~/Library/Saved Application State/com.webcamoidprj.webcamoid.savedState",
  ]
end
