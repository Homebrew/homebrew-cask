cask "znote" do
  arch arm: "-arm64"

  version "2.5.4"
  sha256 arm:   "06a4a4cee70ab5f810dec8df82f265dc001831849ea67185466b4dc5dd584c66",
         intel: "65e7440243a9cc101696efbd1bc55f8620defcedc16123d7de9acd5d8cfe34d9"

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
