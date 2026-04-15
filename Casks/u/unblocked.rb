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
    regex(/unblocked-desktop(?:-arm|-intel)[._-]v?(\d+(?:\.\d+)+)\.pkg/i)
    strategy :json do |json, regex|
      json["versions"]&.flat_map do |item|
        [item["desktopMacARMDownloadUrl"], item["desktopMacIntelDownloadUrl"]].map do |url|
          match = url&.match(regex)
          next unless match

          match[1]
        end
      end&.compact
    end
  end

  depends_on macos: ">= :monterey"

  pkg "unblocked-desktop-#{arch}-#{version}.pkg"

  uninstall quit:       "com.nextchaptersoftware.UnblockedHub",
            signal:     ["TERM", "com.nextchaptersoftware.UnblockedHub"],
            login_item: "Unblocked",
            pkgutil:    "com.nextchaptersoftware.UnblockedHub",
            delete:     "/Applications/Unblocked.app"

  zap trash: [
    "~/Library/Application Support/Unblocked",
    "~/Library/Caches/com.nextchaptersoftware.UnblockedHub",
    "~/Library/Caches/com.nextchaptersoftware.UnblockedHub.ShipIt",
    "~/Library/HTTPStorages/com.nextchaptersoftware.UnblockedHub",
    "~/Library/Preferences/com.nextchaptersoftware.UnblockedHub.plist",
    "~/Library/Saved Application State/com.nextchaptersoftware.UnblockedHub.savedState",
  ]
end
