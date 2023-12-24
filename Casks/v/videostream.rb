cask "videostream" do
  version "0.4.3"
  sha256 :no_check

  url "https://cdn.getvideostream.com/videostream-native-updates/macOS/Videostream.pkg"
  name "Videostream"
  desc "Stream media from your computer to Chromecast"
  homepage "https://getvideostream.com/"

  deprecate! date: "2023-12-17", because: :discontinued

  pkg "Videostream.pkg"

  uninstall launchctl: [
              "com.videostream.launcher",
              "com.videostream.updater.#{version}",
            ],
            signal:    ["TERM", "com.videostream"],
            pkgutil:   "com.videostream"
end
