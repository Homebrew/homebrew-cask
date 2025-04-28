cask "youtube-downloader" do
  version "0.20"
  sha256 "97b9b6dbbdad4e1cbbf353456e4a0e304d65e8edd80c202c626a351652b6775f"

  url "https://github.com/DenBeke/YouTube-Downloader-for-macOS/releases/download/v#{version}/Youtube.Downloader.zip"
  name "YouTube Downloader"
  desc "Simple menu bar app to download YouTube movies"
  homepage "https://github.com/DenBeke/YouTube-Downloader-for-macOS"

  depends_on macos: ">= :sierra"

  app "Youtube Downloader.app"

  zap trash: "~/Library/Preferences/denbeke.Youtube-Downloader.plist"
end
