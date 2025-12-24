cask "windsurf" do
  arch arm: "arm64", intel: "x64"

  version "1.13.3,f5d6162bf21a6caf7ad124c0ddf9cb1089034608"
  sha256 arm:   "492b4e332c04ff0095f317ebcf40ed1cd7fd25cd702dfc49684aa74a1758b07c",
         intel: "04930265933ada2ee3c7d172ce80b532c74daf320a31c61c2ea2bce3bc693993"

  url "https://windsurf-stable.codeiumdata.com/darwin-#{arch}-dmg/stable/#{version.csv.second}/Windsurf-darwin-#{arch}-#{version.csv.first}.dmg",
      verified: "windsurf-stable.codeiumdata.com/"
  name "Windsurf"
  desc "Agentic IDE powered by AI Flow paradigm"
  homepage "https://windsurf.com/editor"

  livecheck do
    url "https://windsurf-stable.codeium.com/api/update/darwin-#{arch}-dmg/stable/latest"
    strategy :json do |json|
      version = json["windsurfVersion"]
      hash = json["version"]
      next if version.blank? || hash.blank?

      "#{version},#{hash}"
    end
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Windsurf.app"
  binary "#{appdir}/Windsurf.app/Contents/Resources/app/bin/windsurf"

  uninstall launchctl: "com.exafunction.windsurf.ShipIt",
            quit:      "com.exafunction.windsurf"

  zap trash: [
    "~/.windsurf",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.exafunction.windsurf.sfl*",
    "~/Library/Application Support/Windsurf",
    "~/Library/Caches/com.exafunction.windsurf",
    "~/Library/Caches/com.exafunction.windsurf.ShipIt",
    "~/Library/HTTPStorages/com.exafunction.windsurf",
    "~/Library/Preferences/com.exafunction.windsurf.plist",
    "~/Library/Saved Application State/com.exafunction.windsurf.savedState",
  ]
end
