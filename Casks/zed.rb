cask "zed" do
  version "0.77.3"
  sha256 "7a10a5d6131fb8578908fb19d3a8c0dd0babecfeda81e57abc7c823ce57db7ae"

  url "zed"
  name "zed"
  desc ""
  homepage "https://https://zed.dev/"
livecheck do
  url "https://zed.dev/_next/data/OOybEEg-80Z5ImnWgZJFJ/download.json"
  regex(%r{version":"(\d+\.\d+\.\d)}i)
end
  app "Zed.app"

  zap trash: [
  "/Library/Application Support/Logitech.localized",
  "~/Library/Application Support/Zed",
  "~/Library/Logs/Zed",
  "~/Library/Preferences/org.jabref.customizedbiblatextypes.plist",
  "~/Library/Preferences/org.jabref.customizedbibtextypes.plist",
  "~/Library/Saved Application State/dev.zed.Zed.savedState",
]
end
