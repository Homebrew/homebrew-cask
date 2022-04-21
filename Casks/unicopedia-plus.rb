cask "unicopedia-plus" do
  version "11.4.0"
  sha256 "fa0c7f9b0f5ae82b0b6a186d47424f433d077a6dbf34552825cd82a6fe7079ee"

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
