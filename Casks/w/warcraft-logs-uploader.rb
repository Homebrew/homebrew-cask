cask "warcraft-logs-uploader" do
  version "9.3.31"
  sha256 "30d18331b973accdd380ce6a164432b15b94bdbebba24c02e86bfa9af4d33275"

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
