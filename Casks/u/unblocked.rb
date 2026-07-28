cask "unblocked" do
  arch arm: "arm", intel: "intel"

  version "1.0.2799"
  sha256 arm:   "58bf175d4dc44c2aee24b793ca996445c5fbbe72224f24f72b060bdd594c347b",
         intel: "0aaf2b0b9e4c431bbfed519733d398f0d4722bc424fdd82bf46c71a8aead4f51"

  url "https://getunblocked.com/releases/macos/unblocked-desktop-#{arch}-#{version}.pkg"
  name "Unblocked"
  desc "AI-powered developer collaboration platform"
  homepage "https://getunblocked.com/"

  livecheck do
    url "https://getunblocked.com/api/versionInfo/public"
    strategy :json do |json|
      json["versions"]&.filter_map { |item| item["productVersion"] }
    end
  end

  depends_on macos: :monterey

  pkg "unblocked-desktop-#{arch}-#{version}.pkg"

  uninstall signal:     [
              ["KILL", "com.nextchaptersoftware.UnblockedHub"],
              ["KILL", "com.nextchaptersoftware.UnblockedHub.helper"],
            ],
            login_item: "Unblocked",
            pkgutil:    "com.nextchaptersoftware.UnblockedHub",
            delete:     "/Applications/Unblocked.app"

  zap trash: [
    "~/Library/Application Support/Unblocked",
    "~/Library/Preferences/com.nextchaptersoftware.UnblockedHub.plist",
  ]
end
