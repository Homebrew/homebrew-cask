cask "unblocked" do
  arch arm: "arm", intel: "intel"

  version "1.0.2626"
  sha256 arm:   "8b81b5fb895de99b5f5885e331f17411b5847fdb77aa13896c14c375dbaabb7b",
         intel: "53a46d32641255590c17682d27c99d44ecb70a9ef82b64ce1d36eeddac0b20e8"

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

  depends_on macos: ">= :monterey"

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
