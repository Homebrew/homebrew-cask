cask "wrike" do
  arch arm: "_ARM"

  version "4.6.1"
  sha256 arm:   "4bfe955f8421b5e44770a24481970402856c9f7b3408a89cbfc11495472577a2",
         intel: "adcb19a8076685ee8f9a16f5209f87a48d7f5076d5b82b4ded70963b3a4f50cc"

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

  depends_on macos: :monterey

  app "Wrike for Mac.app"

  zap trash: [
    "~/Library/Application Support/Wrike",
    "~/Library/Logs/Wrike",
    "~/Library/Preferences/com.wrike.Wrike.plist",
    "~/Library/Saved Application State/com.wrike.Wrike.savedState",
  ]
end
