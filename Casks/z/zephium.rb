cask "zephium" do
  version "1.0.5"
  sha256 "11c35eace71e21af87ccdbc3049f96d028850faf1c2013bcfc36d4b9b7d4bcdc"

  url "https://github.com/zephium-browser/Zephium/releases/download/v#{version}/Zephium-macOS-arm64.dmg"
  name "Zephium"
  desc "WebKit-based browser with built-in AI tools"
  homepage "https://zephium.app/"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Zephium.app"

  zap trash: [
    "~/Library/Application Support/app.zephium",
    "~/Library/Logs/app.zephium",
    "~/Library/Preferences/app.zephium.plist",
    "~/Library/WebKit/app.zephium",
  ]
end
