cask "videostream" do
  version "0.4.3"
  sha256 "de96cbf5d9ded0d7760d0ae89a36c11c82dfc7b2566dbf606b770983cf066937"

  url "https://cdn.getvideostream.com/videostream-native-updates/macOS/Videostream.pkg"
  appcast "https://videostream-cdn.s3.amazonaws.com/videostream-native-updates/macOS/manifest.json"
  name "Videostream"
  homepage "https://getvideostream.com/"

  pkg "Videostream.pkg"

  uninstall launchctl: [
    "com.videostream.launcher",
    "com.videostream.updater.#{version}",
    "com.google.keystone.user.agent",
    "com.google.keystone.user.xpcservice",
  ],
            pkgutil:   "com.videostream",
            signal:    ["TERM", "com.videostream"]
end
