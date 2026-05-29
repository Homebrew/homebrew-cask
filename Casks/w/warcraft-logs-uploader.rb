cask "warcraft-logs-uploader" do
  version "9.3.61"
  sha256 "d98c8f0a0fe0910b7bc8442385c825cdfa623a72c00c0e4fa4a25834ebd71433"

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
  depends_on macos: :big_sur

  app "Warcraft Logs Uploader.app"

  zap trash: "~/Library/Application Support/Warcraft Logs Uploader"
end
