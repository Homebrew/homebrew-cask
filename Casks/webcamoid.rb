cask "webcamoid" do
  version "8.7.1"
  sha256 "70f4af7be8d9b012196dddbceb88c87026d63c2b87caaf275eb1a09d107a4c52"

  # github.com/webcamoid/webcamoid/ was verified as official when first introduced to the cask
  url "https://github.com/webcamoid/webcamoid/releases/download/#{version}/webcamoid-portable-#{version}-x86_64.dmg"
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
