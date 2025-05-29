cask "youtube-downloader" do
  version "0.21"
  sha256 "66f5b0879c3b47ecac11dd4b51c353a3a581dc44982a700cecea3a30d03e05c2"

  url "https://github.com/DenBeke/YouTube-Downloader-for-macOS/releases/download/v#{version}/Youtube.Downloader.zip"
  name "YouTube Downloader"
  desc "Simple menu bar app to download YouTube movies"
  homepage "https://github.com/DenBeke/YouTube-Downloader-for-macOS"

  depends_on macos: ">= :sierra"

  app "Youtube Downloader.app"

  zap trash: "~/Library/Preferences/denbeke.Youtube-Downloader.plist"
end
