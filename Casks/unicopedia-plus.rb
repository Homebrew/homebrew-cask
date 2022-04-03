cask "unicopedia-plus" do
  version "11.3.0"
  sha256 "d3aa7f113824a0acb4ead45cdf547d7bb34a87ea8e49f737228a5329f28bdce5"

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
