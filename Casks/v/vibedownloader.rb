cask "vibedownloader" do
  version "1.6.0"
  sha256 "5cd34688d45479544d424ebd96c028342d9598c679cda70aa3cf5807cbc44058"

  url "https://github.com/naeem5877/vibedownloader-desktop/releases/download/v#{version}/VibeDownloader-#{version}-x64.dmg"
  name "VibeDownloader"
  desc "Multi-platform video and audio downloader powered by yt-dlp"
  homepage "https://github.com/naeem5877/vibedownloader-desktop"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "VibeDownloader.app"

  zap trash: [
    "~/Library/Application Support/VibeDownloader",
    "~/Library/Logs/VibeDownloader",
    "~/Library/Preferences/com.vibedownloader.app.plist",
    "~/Library/Caches/com.vibedownloader.app",
  ]
end
