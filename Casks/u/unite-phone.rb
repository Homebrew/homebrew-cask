cask "unite-phone" do
  version "2024.9.1"
  sha256 "e6d3147241dce465b902f3b2c70885a52c8d0d5d793ab09c8398d8acf7bf5a93"

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
