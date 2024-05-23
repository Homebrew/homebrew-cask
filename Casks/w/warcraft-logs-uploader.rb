cask "warcraft-logs-uploader" do
  version "8.5.6"
  sha256 "e98216d876cc2d2fcd72a2fa968c9de872c05a0136a7bd2b30507247a3aa8d15"

  url "https://github.com/RPGLogs/Uploaders-warcraftlogs/releases/download/v#{version}/warcraftlogs-v#{version}.dmg",
      verified: "github.com/RPGLogs/Uploaders-warcraftlogs/"
  name "Warcraft Logs Uploader"
  desc "Client to upload warcraft logs"
  homepage "https://classic.warcraftlogs.com/"

  livecheck do
    url "https://classic.warcraftlogs.com/client/download"
    strategy :page_match
    regex(%r{.*?/warcraftlogs[._-]v?(\d+(?:\.\d+)*)\.dmg}i)
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Warcraft Logs Uploader.app"

  zap trash: "~/Library/Application Support/Warcraft Logs Uploader"
end
