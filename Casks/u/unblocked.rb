cask "unblocked" do
  arch arm: "arm", intel: "intel"

  version "1.0.2834"
  sha256 arm:   "3c8a447cc29d9c8f9316b14921b635c329e1bb1318b4ed50c93282187b00a8a7",
         intel: "be2a8c8ba6589528c8ee9f8678d6bd0dc5d0d6f41a180053bf8094c2db95a18d"

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
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.nextchaptersoftware.unblockedhub.sfl*",
    "~/Library/Application Support/Unblocked",
    "~/Library/Preferences/com.nextchaptersoftware.UnblockedHub.plist",
  ]
end
