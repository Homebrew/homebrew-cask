cask "videostream" do
  version "0.4.3"
  sha256 :no_check

  url "https://cdn.getvideostream.com/videostream-native-updates/macOS/Videostream.pkg"
  name "Videostream"
  desc "Stream media from your computer to Chromecast"
  homepage "https://getvideostream.com/"

  no_autobump! because: :requires_manual_review

  disable! date: "2024-12-16", because: :discontinued

  pkg "Videostream.pkg"

  uninstall launchctl: [
              "com.videostream.launcher",
              "com.videostream.updater.#{version}",
            ],
            signal:    ["TERM", "com.videostream"],
            pkgutil:   "com.videostream"
end
