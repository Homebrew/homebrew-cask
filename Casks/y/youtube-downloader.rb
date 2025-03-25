cask "youtube-downloader" do
  version "0.19"
  sha256 "23ae50372438f8fa94ffc45cb033e0b6c12e91ba6c46e498837274389c88bcf1"

  url "https://github.com/DenBeke/YouTube-Downloader-for-macOS/releases/download/v#{version}/Youtube.Downloader.zip"
  name "YouTube Downloader"
  desc "Simple menu bar app to download YouTube movies"
  homepage "https://github.com/DenBeke/YouTube-Downloader-for-macOS"

  depends_on macos: ">= :sierra"

  app "Youtube Downloader.app"

  zap trash: "~/Library/Preferences/denbeke.Youtube-Downloader.plist"
end
