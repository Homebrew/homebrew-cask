cask "unite-phone" do
  version "2025.9.2"
  sha256 "b79fc7a2977b72b69c8b238740c4d5c81073d0a94fcd3cb36b26d5d50e794b26"

  url "https://update.unitephone.nl/updates/unite_phone-#{version}-universal-mac.zip",
      user_agent: :fake
  name "Unite Phone"
  desc "Video and voice calling application"
  homepage "https://unitephone.nl/"

  livecheck do
    url "https://update.unitephone.nl/updates/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: ">= :big_sur"

  app "Unite Phone.app"

  zap trash: [
    "/Library/Logs/DiagnosticReports/Unite Phone Helper*",
    "~/Library/Application Support/Unite Phone",
  ]
end
