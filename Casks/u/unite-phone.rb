cask "unite-phone" do
  version "2024.10.0"
  sha256 "527e25e41b3cd6e2f32f5b34aaf866e0097231dc1b78885ec3550a52dbe41dd3"

  url "https://update.unitephone.nl/download/unite_phone-#{version}-universal.dmg",
      user_agent: :fake
  name "Unite Phone"
  desc "Video and voice calling application"
  homepage "https://unitephone.nl/"

  livecheck do
    url "https://unitephone.nl/unitephone-app/macos"
    strategy :header_match
  end

  app "Unite Phone.app"

  zap trash: [
    "/Library/Logs/DiagnosticReports/Unite Phone Helper*",
    "~/Library/Application Support/Unite Phone",
  ]
end
