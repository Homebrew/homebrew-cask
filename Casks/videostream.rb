cask "videostream" do
  version "0.4.3"
  sha256 "bcf6d31217985b454c7496e5c2df90f5a6fe9902171daae6d1b9baac0878a200"

  url "https://cdn.getvideostream.com/videostream-native-updates/macOS/Videostream.pkg"
  appcast "https://videostream-cdn.s3.amazonaws.com/videostream-native-updates/macOS/manifest.json"
  name "Videostream"
  desc "Stream media from your computer to Chromecast"
  homepage "https://getvideostream.com/"

  pkg "Videostream.pkg"

  uninstall launchctl: [
    "com.videostream.launcher",
    "com.videostream.updater.#{version}",
  ],
            pkgutil:   "com.videostream",
            signal:    ["TERM", "com.videostream"]
end
