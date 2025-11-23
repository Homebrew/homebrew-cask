cask "youtube-downloader" do
  version "0.23"
  sha256 "2f26cd4475d7ccc5532706414bb558625e46f409d039d05c202dd82b81a24c19"

  url "https://github.com/DenBeke/YouTube-Downloader-for-macOS/releases/download/v#{version}/Youtube.Downloader.zip"
  name "YouTube Downloader"
  desc "Simple menu bar app to download YouTube movies"
  homepage "https://github.com/DenBeke/YouTube-Downloader-for-macOS"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  app "Youtube Downloader.app"

  zap trash: "~/Library/Preferences/denbeke.Youtube-Downloader.plist"
end
