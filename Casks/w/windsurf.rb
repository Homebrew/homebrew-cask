cask "windsurf" do
  arch arm: "arm64", intel: "x64"

  version "1.8.2,eccc45da0d0c40e57275e0cce7db644c7b1278d8"
  sha256 arm:   "bc6234029eb14694f5de5d43974a2022363d792028a11d0b243e02c922587ff2",
         intel: "ab21335a5eee3bb69caeccd50e4b5539587d7a38bee83aa2c7105560909d3dec"

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
