cask "wrike" do
  arch arm: "_ARM"

  version "4.6.0"
  sha256 arm:   "ed72ca481e1f49a160219ac69ecd0b2f7b2093574895a3dcbfb40cf5baafe16b",
         intel: "7a6ed455846d0bb44f597028e779528f647eac255482727ad82305908f245180"

  url "https://dl.wrike.com/download/WrikeDesktopApp#{arch}.v#{version}.dmg"
  name "Wrike"
  desc "Project management app"
  homepage "https://www.wrike.com/apps/mobile-and-desktop/desktop-app/"

  livecheck do
    url "https://www.wrike.com/frontend/electron-app/changelog.json"
    regex(/^v?(\d+(?:\.\d+)+)(?:$|\s*\(for\s+Mac)/i)
    strategy :json do |json, regex|
      json.map do |item|
        match = item["version"]&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  depends_on macos: ">= :big_sur"

  app "Wrike for Mac.app"

  zap trash: [
    "~/Library/Application Support/Wrike",
    "~/Library/Logs/Wrike",
    "~/Library/Preferences/com.wrike.Wrike.plist",
    "~/Library/Saved Application State/com.wrike.Wrike.savedState",
  ]
end
