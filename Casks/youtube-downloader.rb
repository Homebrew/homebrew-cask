cask "youtube-downloader" do
  version "0.10"
  sha256 "f9cf455e19a54e1e6756a1cf65e9647a852fcea20cbc452100e6f17a14516ff7"

  url "https://github.com/DenBeke/YouTube-Downloader-for-macOS/releases/download/v#{version}/Youtube.Downloader.zip"
  name "YouTube Downloader"
  desc "Simple menu bar app to download YouTube movies"
  homepage "https://github.com/DenBeke/YouTube-Downloader-for-macOS"

  app "Youtube Downloader.app"
end
