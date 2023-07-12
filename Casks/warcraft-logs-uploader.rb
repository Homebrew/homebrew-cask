cask "warcraft-logs-uploader" do
  version "6.0.2"
  sha256 "4f9f08b9eb88f63542e43e254df16672ceadb30e2e4112d19307fd920cd5aae9"

  url "https://github.com/RPGLogs/Uploaders-warcraftlogs/releases/download/v#{version}/Warcraft-Logs-Uploader-#{version}-universal.dmg",
      verified: "github.com/RPGLogs/Uploaders-warcraftlogs/"
  name "warcraft-logs-uploader"
  desc "Client to upload logs to Warcraft Logs"
  homepage "https://www.warcraftlogs.com/"

  app "Warcraft Logs Uploader.app"
end
