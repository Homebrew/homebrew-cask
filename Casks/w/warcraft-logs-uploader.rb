cask "warcraft-logs-uploader" do
  version "8.19.56"
  sha256 "f179726ca8308bd9ccf48f2fe6a2b8d605ad982e4f1d073447b501e1253d1fa0"

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
