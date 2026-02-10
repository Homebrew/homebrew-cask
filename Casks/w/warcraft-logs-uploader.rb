cask "warcraft-logs-uploader" do
  version "8.20.13"
  sha256 "56c493fd5cc855acc3dd05bfca899e69795aacf5c95b1bf78d2442c107cf9ede"

  url "https://github.com/RPGLogs/Uploaders-warcraftlogs/releases/download/v#{version}/warcraftlogs-v#{version}.dmg",
      verified: "github.com/RPGLogs/Uploaders-warcraftlogs/"
  name "Warcraft Logs Uploader"
  desc "Client to upload warcraft logs"
  homepage "https://classic.warcraftlogs.com/"

  # The download page (https://classic.warcraftlogs.com/client/download) is
  # inaccessible due to Cloudflare protections, so we check GitHub releases
  # directly.
  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Warcraft Logs Uploader.app"

  zap trash: "~/Library/Application Support/Warcraft Logs Uploader"
end
