cask "warcraft-logs-uploader" do
  version "8.17.46"
  sha256 "cebedaa54ee094e7ccaf1476b4dcd0ad3dc735e899f8f85fb64d48dc1cab49ba"

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
