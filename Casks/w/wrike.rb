cask "wrike" do
  arch arm: "_ARM"

  version "4.5.2"
  sha256 arm:   "50793b2b5516bcf32fc8f8f9640d229caac652b94d8c217b32307c0b12106f13",
         intel: "433ddd4251c55a2ef963fe99acbf3eeddb8bae6b60837f52f46c0aa9242edbae"

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

  depends_on macos: ">= :catalina"

  app "Wrike for Mac.app"

  zap trash: [
    "~/Library/Application Support/Wrike",
    "~/Library/Logs/Wrike",
    "~/Library/Preferences/com.wrike.Wrike.plist",
    "~/Library/Saved Application State/com.wrike.Wrike.savedState",
  ]
end
