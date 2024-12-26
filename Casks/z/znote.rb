cask "znote" do
  arch arm: "-arm64"

  version "2.7.6"
  sha256 arm:   "37b850937ce68d27d3b15a265e73d812e177e30423707cb5394b652261eaebfc",
         intel: "9918bddfb9dda4b21757689f1f1d146ee710fa864c483db86079b7dbd3d7ece9"

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
