cask "unite-phone" do
  version "2023.8.0"
  sha256 "9580f2ffd9e4ed6d8c5498e54e9fad385b57238c9c42feb7de6302ff5ce59728"

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
