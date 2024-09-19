cask "znote" do
  arch arm: "-arm64"

  version "2.6.5"
  sha256 arm:   "3a28dba75eecfaab71b05e401910e5428baafa0c376aa83d6834ba41f32e794f",
         intel: "58bc0e40c8113ecc420a0ca92daef20bf50b22c62a26ccec038d2d16dc9564e1"

  url "https://github.com/alagrede/znote-app/releases/download/v#{version}/znote-#{version}#{arch}.dmg",
      verified: "github.com/alagrede/znote-app/"
  name "Znote"
  desc "Notes-taking app"
  homepage "https://znote.io/"

  depends_on macos: ">= :el_capitan"

  app "znote.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.tony.znote.sfl*",
    "~/Library/Application Support/znote",
    "~/Library/Preferences/com.tony.znote.plist",
    "~/Library/Saved Application State/com.tony.znote.savedState",
  ]
end
