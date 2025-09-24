cask "windsurf" do
  arch arm: "arm64", intel: "x64"

  version "1.12.9,7f56dd6ea0982abb4c9a88041a0cb9985fcf3779"
  sha256 arm:   "818d8ee8f38d38e9daef24d41164db9a16a451501479b7fd3dfdc17e3e045902",
         intel: "8841c699d72729b8e7c1523c01801356026b34cf5bc7a7882498aecf0dcacacf"

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
