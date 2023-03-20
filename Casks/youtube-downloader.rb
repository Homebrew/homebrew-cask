cask "youtube-downloader" do
  version "0.11"
  sha256 "a02ca8989a50e4cf90d13107236224409b355d37266e1d04de7b97c0362a26ca"

  url "https://github.com/DenBeke/YouTube-Downloader-for-macOS/releases/download/v#{version}/Youtube.Downloader.zip"
  name "YouTube Downloader"
  desc "Simple menu bar app to download YouTube movies"
  homepage "https://github.com/DenBeke/YouTube-Downloader-for-macOS"

  app "Youtube Downloader.app"
end
