cask "windsurf" do
  arch arm: "arm64", intel: "x64"

  version "1.8.0,0e5671325b17d1c5cc8f2a78cc8dcb0b132ddb4c"
  sha256 arm:   "af351f765c107a2957457569ad1144a2a93448a5ce2011d55756f51239757af1",
         intel: "f1bf88150658700c0edafd706973c4fe231120551c82b62fb00ab5e045688821"

  url "https://windsurf-stable.codeiumdata.com/darwin-#{arch}-dmg/stable/#{version.csv.second}/Windsurf-darwin-#{arch}-#{version.csv.first}.dmg",
      verified: "windsurf-stable.codeiumdata.com/"
  name "Windsurf"
  desc "Agentic IDE powered by AI Flow paradigm"
  homepage "https://www.codeium.com/windsurf"

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
  depends_on macos: ">= :catalina"

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
