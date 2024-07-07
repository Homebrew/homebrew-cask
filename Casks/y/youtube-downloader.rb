cask "youtube-downloader" do
  version "0.12"
  sha256 "85f5ca5df1060ee32a0db6ccb9671fa8082b1e139ebb5793cc03f18c1ac24471"

  url "https://github.com/DenBeke/YouTube-Downloader-for-macOS/releases/download/v#{version}/Youtube.Downloader.zip"
  name "YouTube Downloader"
  desc "Simple menu bar app to download YouTube movies"
  homepage "https://github.com/DenBeke/YouTube-Downloader-for-macOS"

  depends_on macos: ">= :sierra"

  app "Youtube Downloader.app"

  zap trash: "~/Library/Preferences/denbeke.Youtube-Downloader.plist"
end
