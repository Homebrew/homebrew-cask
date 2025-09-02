cask "youtube-downloader" do
  version "0.22"
  sha256 "edb24cc5bdb9687588d85b0ae667aa6d5f83faee3b7fbba690677f921493e238"

  url "https://github.com/DenBeke/YouTube-Downloader-for-macOS/releases/download/v#{version}/Youtube.Downloader.zip"
  name "YouTube Downloader"
  desc "Simple menu bar app to download YouTube movies"
  homepage "https://github.com/DenBeke/YouTube-Downloader-for-macOS"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: ">= :sierra"

  app "Youtube Downloader.app"

  zap trash: "~/Library/Preferences/denbeke.Youtube-Downloader.plist"
end
