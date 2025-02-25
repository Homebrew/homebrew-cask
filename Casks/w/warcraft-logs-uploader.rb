cask "warcraft-logs-uploader" do
  version "8.16.1"
  sha256 "4a033d1c2d54b58914d44bfb3b974389ee9aeac5f2ca46dede8cb6a56763b354"

  url "https://github.com/RPGLogs/Uploaders-warcraftlogs/releases/download/v#{version}/warcraftlogs-v#{version}.dmg",
      verified: "github.com/RPGLogs/Uploaders-warcraftlogs/"
  name "Warcraft Logs Uploader"
  desc "Client to upload warcraft logs"
  homepage "https://classic.warcraftlogs.com/"

  livecheck do
    url "https://classic.warcraftlogs.com/client/download"
    regex(%r{.*?/warcraftlogs[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Warcraft Logs Uploader.app"

  zap trash: "~/Library/Application Support/Warcraft Logs Uploader"
end
