cask "unite-phone" do
  version "2026.3.3"
  sha256 "1d975bb091c77657168aba27000dfca6c024d42df0407a8d2138ba6b28033b11"

  url "https://update.unitephone.nl/download/unitephone-#{version}.dmg",
      user_agent: :browser
  name "Unite Phone"
  desc "Video and voice calling application"
  homepage "https://unitephone.nl/"

  livecheck do
    url "https://update.unitephone.nl/"
    regex(%r{<small>(\d+(?:\.\d+)+)</small>}i)
  end

  depends_on macos: ">= :monterey"

  app "Unite Phone.app"

  zap trash: [
    "/Library/Logs/DiagnosticReports/Unite Phone Helper*",
    "~/Library/Application Support/Unite Phone",
  ]
end
