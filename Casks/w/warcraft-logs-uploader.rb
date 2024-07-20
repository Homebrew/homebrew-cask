cask "warcraft-logs-uploader" do
  version "8.10.0"
  sha256 "695ac8a7a6df03ac2577b9fe9b88ba525188a57999daec559ad52583923a8505"

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
  depends_on macos: ">= :high_sierra"

  app "Warcraft Logs Uploader.app"

  zap trash: "~/Library/Application Support/Warcraft Logs Uploader"
end
