cask "unicopedia-plus" do
  version "11.2.2"
  sha256 "396feb5cad7cb8f38d150e86c244ee5310b559dfc7f87d13ce9fa97648727672"

  url "https://github.com/tonton-pixel/unicopedia-plus/releases/download/v#{version}/unicopedia-plus-mac-universal-#{version}.dmg"
  name "Unicopedia Plus"
  desc "Unicode, Unihan & emoji utilities"
  homepage "https://github.com/tonton-pixel/unicopedia-plus"

  app "Unicopedia Plus.app"

  zap trash: [
    "~/Library/Preferences/com.electron.unicopedia-plus.plist",
    "~/Library/Preferences/com.tonton-pixel.unicopedia-plus.plist",
    "~/Library/Saved Application State/com.electron.unicopedia-plus.savedState",
    "~/Library/Saved Application State/com.tonton-pixel.unicopedia-plus.savedState",
  ]
end
