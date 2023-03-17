cask "unite-phone" do
  version "2023.3.1"
  sha256 "17aa8b3024938e359b7a6f5f03a35a2d8add8776367184504668f4e087a6c5f7"

  url "https://update.unitephone.nl/download/unite_phone-#{version}-universal.dmg"
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
