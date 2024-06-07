cask "znote" do
  arch arm: "-arm64"

  version "2.6.2"
  sha256 arm:   "b12cc96ad15d8b2bb8344f1c58ed8399eedad4ecf9f8fafdeadbb4a899986029",
         intel: "e5add9aefe27fb044ef026e638927f73cdc7795e4fcf0826f393d7849e62588b"

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
