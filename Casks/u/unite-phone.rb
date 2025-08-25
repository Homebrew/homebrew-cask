cask "unite-phone" do
  version "2025.8.1"
  sha256 "53bc7f948d5c4606f37ee2dee959df802d892c6c1be2411cdf6ca897c9f147b7"

  url "https://update.unitephone.nl/updates/unite_phone-#{version}-universal-mac.zip",
      user_agent: :fake
  name "Unite Phone"
  desc "Video and voice calling application"
  homepage "https://unitephone.nl/"

  livecheck do
    url "https://update.unitephone.nl/updates/latest-mac.yml"
    strategy :electron_builder
  end

  app "Unite Phone.app"

  zap trash: [
    "/Library/Logs/DiagnosticReports/Unite Phone Helper*",
    "~/Library/Application Support/Unite Phone",
  ]
end
