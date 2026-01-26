cask "unite-phone" do
  version "2025.10.7"
  sha256 "09ca6ee8263baf87e137e8129caf79e7e4496904c08c3e550f4ac795c2223b34"

  url "https://update.unitephone.nl/updates/unite_phone-#{version}-universal-mac.zip",
      user_agent: :browser
  name "Unite Phone"
  desc "Video and voice calling application"
  homepage "https://unitephone.nl/"

  # Artifact URL is consistently unreachable in the homebrew/cask CI environment
  disable! date: "2025-12-31", because: :unreachable

  depends_on macos: ">= :big_sur"

  app "Unite Phone.app"

  zap trash: [
    "/Library/Logs/DiagnosticReports/Unite Phone Helper*",
    "~/Library/Application Support/Unite Phone",
  ]
end
