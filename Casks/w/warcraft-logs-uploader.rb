cask "warcraft-logs-uploader" do
  version "8.19.27"
  sha256 "0c305df1674a71f72aed9c61bf9fe4b2c092bb3b8e9e1dccbcd134349b50507c"

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
