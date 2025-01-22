cask "wrike" do
  version "4.5.0"
  sha256 "14899336aa1e2c078ee66d9e6d20c5b900ebfee17eac5f26cf7552190713ec55"

  url "https://dl.wrike.com/download/WrikeDesktopApp.v#{version}.dmg"
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

  depends_on macos: ">= :catalina"

  app "Wrike for Mac.app"

  zap trash: [
    "~/Library/Application Support/Wrike",
    "~/Library/Logs/Wrike",
    "~/Library/Preferences/com.wrike.Wrike.plist",
    "~/Library/Saved Application State/com.wrike.Wrike.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
