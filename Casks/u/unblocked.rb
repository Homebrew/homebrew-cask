cask "unblocked" do
  arch arm: "arm", intel: "intel"

  version "1.0.2912"
  sha256 arm:   "99bf772bec44117700fa732c10e3fb7bb4b871634252cb04d47d285740ca1841",
         intel: "11406e4738cfbda8d8230a7492370485edb4defad37725ca3903196427981e26"

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
