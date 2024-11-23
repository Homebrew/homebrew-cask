cask "znote" do
  arch arm: "-arm64"

  version "2.6.13"
  sha256 arm:   "42642fadcbfe7c6dea7a1ccc7d9aabc7df98d2f5748960be128c31697240d0d4",
         intel: "4f775f34512316be4d7abc8a6a6ea9cfdc48462c02c5d22a63a3203a68451da9"

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
