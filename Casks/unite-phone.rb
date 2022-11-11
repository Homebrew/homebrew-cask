cask "unite-phone" do
  version "0.7.3"
  sha256 "a3723343bc114d77edb5a6c1fb338fb93c1e7f4ea0bf398882db37628e304433"

  url "https://update.unitephone.nl/download/unite_phone-#{version}-universal.dmg"
  name "Unite Phone"
  desc "Video and voice calling application"
  homepage "https://unitephone.nl/"

  livecheck do
    url "https://unitephone.nl/unitephone-app/macos"
    strategy :header_match
    regex(/unite_phone[._-]v?(\d+(?:\.\d+)*)[._-]universal\.dmg/i)
  end

  app "Unite Phone.app"

  zap trash: [
    "/Library/Logs/DiagnosticReports/Unite Phone Helper*",
    "~/Library/Application Support/Unite Phone",
  ]
end
