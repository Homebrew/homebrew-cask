cask "unicopedia-plus" do
  version "12.0.0"
  sha256 "aa945abb9e326f2324465689b584d663a6e834fcec517f4abdce19552bf144ff"

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
