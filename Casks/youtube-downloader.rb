cask "youtube-downloader" do
  version "0.7"
  sha256 "4cfc16f8eb86c5078523e78b53ec871fb50ffe5fed134bb7e0221044dd56eba8"

  url "https://github.com/DenBeke/YouTube-Downloader-for-macOS/releases/download/v#{version}/Youtube.Downloader.zip"
  appcast "https://github.com/DenBeke/YouTube-Downloader-for-macOS/releases.atom"
  name "YouTube Downloader"
  desc "Simple menu bar app to download YouTube movies"
  homepage "https://github.com/DenBeke/YouTube-Downloader-for-macOS"

  app "Youtube Downloader.app"
end
