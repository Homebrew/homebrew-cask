cask "unblocked" do
  arch arm: "arm", intel: "intel"

  version "1.0.2825"
  sha256 arm:   "3980837157e24fa3a7c265cbcb9e0d68cee5c05475c1ba708bd6b66ec378d00c",
         intel: "83f6dad8407c51f2e51a45195a606fa113f69c7621b46f64b7c419506ae6422a"

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
