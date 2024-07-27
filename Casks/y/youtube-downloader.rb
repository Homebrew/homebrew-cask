cask "youtube-downloader" do
  version "0.15"
  sha256 "2c56a82660e21478a9ad2df568fc88355d52e963820470f996210e4c1accc3c7"

  url "https://github.com/DenBeke/YouTube-Downloader-for-macOS/releases/download/v#{version}/Youtube.Downloader.zip"
  name "YouTube Downloader"
  desc "Simple menu bar app to download YouTube movies"
  homepage "https://github.com/DenBeke/YouTube-Downloader-for-macOS"

  depends_on macos: ">= :sierra"

  app "Youtube Downloader.app"

  zap trash: "~/Library/Preferences/denbeke.Youtube-Downloader.plist"
end
