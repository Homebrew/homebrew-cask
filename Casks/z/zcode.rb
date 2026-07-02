cask "zcode" do
  arch arm: "arm64", intel: "x64"

  version "3.2.3"
  sha256 arm:   "10d3ebb6cae5f1d30d8bfc1919c33da1ad92aa4c198a7b83159e8d28a039ffcc",
         intel: "5c31d1da903d665eff53b76e1fdb11e2009dfbcc8c5fad8f57f294d1bbcae8cd"

  url "https://cdn-zcode.z.ai/zcode/electron/releases/#{version}/ZCode-#{version}-mac-#{arch}.dmg"
  name "ZCode"
  desc "AI-assisted development environment"
  homepage "https://zcode.z.ai/"

  livecheck do
    url :homepage
    regex(/ZCode[._-]v?(\d+(?:\.\d+)+)-mac-arm64\.dmg/i)
  end

  auto_updates true
  depends_on macos: :monterey

  app "ZCode.app"

  zap trash: [
    "~/Library/Application Support/ZCode",
    "~/Library/Caches/@zcodedesktop-updater",
    "~/Library/Preferences/dev.zcode.app.plist",
    "~/Library/Services/Open in ZCode.workflow",
  ]
end
