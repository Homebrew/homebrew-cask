cask "youtube-downloader" do
  version "0.8"
  sha256 "3733b3bff04368d6debee519af2ea87867af8f5be18878752714a7632e42cec7"

  url "https://github.com/DenBeke/YouTube-Downloader-for-macOS/releases/download/v#{version}/Youtube.Downloader.zip"
  name "YouTube Downloader"
  desc "Simple menu bar app to download YouTube movies"
  homepage "https://github.com/DenBeke/YouTube-Downloader-for-macOS"

  app "Youtube Downloader.app"
end
