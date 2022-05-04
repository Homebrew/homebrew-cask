cask "unicopedia-plus" do
  version "11.6.0"
  sha256 "de355c6bc5e8dd51850f514e8fb8b326667eb1ac1d191f6303221b9d726c4936"

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
