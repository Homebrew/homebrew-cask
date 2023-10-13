cask "unite-phone" do
  version "2023.10.3"
  sha256 "42400be79427893d9a0d419385ae3451bc2e0f2b9490c5e8cc9288053caa2b47"

  url "https://update.unitephone.nl/download/unite_phone-#{version}-universal.dmg",
      user_agent: :fake
  name "Unite Phone"
  desc "Video and voice calling application"
  homepage "https://unitephone.nl/"

  livecheck do
    url "https://unitephone.nl/unitephone-app/macos"
    regex(/unite_phone[._-]v?(\d+(?:\.\d+)*)[._-]universal\.dmg/i)
    strategy :header_match
  end

  app "Unite Phone.app"

  zap trash: [
    "/Library/Logs/DiagnosticReports/Unite Phone Helper*",
    "~/Library/Application Support/Unite Phone",
  ]
end
