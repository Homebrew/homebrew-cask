cask "youtube-downloader" do
  version "0.9"
  sha256 "4f45a4ea3d22b7e991f0ec519b89e36630f6b0944b749bdafaa6f709b044714e"

  url "https://github.com/DenBeke/YouTube-Downloader-for-macOS/releases/download/v#{version}/Youtube.Downloader.zip"
  name "YouTube Downloader"
  desc "Simple menu bar app to download YouTube movies"
  homepage "https://github.com/DenBeke/YouTube-Downloader-for-macOS"

  app "Youtube Downloader.app"
end
