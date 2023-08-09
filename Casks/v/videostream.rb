cask "videostream" do
  version "0.4.3"
  sha256 :no_check

  url "https://cdn.getvideostream.com/videostream-native-updates/macOS/Videostream.pkg"
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

  caveats do
    discontinued
  end
end
