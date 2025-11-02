cask "unite-phone" do
  version "2025.10.7"
  sha256 "09ca6ee8263baf87e137e8129caf79e7e4496904c08c3e550f4ac795c2223b34"

  url "https://update.unitephone.nl/updates/unite_phone-#{version}-universal-mac.zip",
      user_agent: :fake
  name "Unite Phone"
  desc "Video and voice calling application"
  homepage "https://unitephone.nl/"

  livecheck do
    url "https://update.unitephone.nl/updates/latest-mac.yml"
    strategy :electron_builder
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: ">= :big_sur"

  app "Unite Phone.app"

  zap trash: [
    "/Library/Logs/DiagnosticReports/Unite Phone Helper*",
    "~/Library/Application Support/Unite Phone",
  ]
end
