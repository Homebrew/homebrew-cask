cask "warcraft-logs-uploader" do
  version "8.17.1"
  sha256 "dbed6dfb4b1dbf29bd1a39f08b1d5f941dff6b1ec012fe4bacf7dcae45d6b989"

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
