cask "unite-phone" do
  version "2023.12.2"
  sha256 "4bef779614990f470deb981418bd6305a5540dd15efd1799f9ef820943e37d82"

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
