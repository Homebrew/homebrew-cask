cask "wrike" do
  arch arm: "_ARM"

  version "4.6.2"
  sha256 arm:   "b8796829ac6d884df0bd65e9f5b399375c827852dbb51cfdd4420a091194c9bd",
         intel: "92e94f94460631be8a2973312d92a1bf2b14662de7f68439d00f6d66bca50f79"

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
