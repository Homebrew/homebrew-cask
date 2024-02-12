cask "unite-phone" do
  version "2024.2.0"
  sha256 "39277eda856902bc33bcbf4557103f7645975925095d4ce52c52fe76f50e2ae7"

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
