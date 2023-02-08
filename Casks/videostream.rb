cask "videostream" do
  version "0.5.0"
  sha256 :no_check

  url "https://cdn.getvideostream.com/videostream-native-updates/macOS/Videostream.pkg"
  name "Videostream"
  desc "Stream media from your computer to Chromecast"
  homepage "https://getvideostream.com/"

  livecheck do
    url "https://videostream-cdn.s3.amazonaws.com/videostream-native-updates/macOS/manifest.json"
    regex(/CurrentVersion:\s*'([^']+)'/)
  end

  pkg "Videostream.pkg"

  uninstall launchctl: [
              "com.videostream.launcher",
              "com.videostream.updater.#{version}",
            ],
            pkgutil:   "com.videostream",
            signal:    ["TERM", "com.videostream"]
end
