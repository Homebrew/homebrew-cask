cask "znote" do
  arch arm: "-arm64"

  version "2.7.3"
  sha256 arm:   "07e6dab8e0aa726ad456b56d19f1483f3a488d89b0d0d66a9dc4ddb7b3f1379d",
         intel: "86c29822f48fdc62fb099b5be3264f87dfcaf1db9486f5b5ff4e140ae5f97d5f"

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
