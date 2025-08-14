cask "unite-phone" do
  version "2025.8.1"
  sha256 "f5ce0bdc6c0ef8b2411f20c050e6e862892875df0ff81fc14e83d1f346a5e5d6"

  url "https://update.unitephone.nl/download/unitephone-#{version}.dmg",
      user_agent: :fake
  name "Unite Phone"
  desc "Video and voice calling application"
  homepage "https://unitephone.nl/"

  livecheck do
    url "https://unitephone.nl/unitephone-app/macos"
    strategy :header_match
  end

  depends_on macos: ">= :big_sur"

  app "Unite Phone.app"

  zap trash: [
    "/Library/Logs/DiagnosticReports/Unite Phone Helper*",
    "~/Library/Application Support/Unite Phone",
  ]
end
