cask "windsurf" do
  arch arm: "arm64", intel: "x64"

  version "1.12.12,146732d0c28fe6d8f982f1ebf7ab4101ece88c63"
  sha256 arm:   "3045393e771ad71f98948257e1a62430aeab64192bcbab85aba85b13bf3aa1ad",
         intel: "47e2e52503002e623521a95f58e7316762648609115f9e801dd4149a40258552"

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
