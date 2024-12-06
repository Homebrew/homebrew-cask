cask "znote" do
  arch arm: "-arm64"

  version "2.7.0"
  sha256 arm:   "4315fbdd03013aaff9b29264e771d0cc384bab536cea80c96242af96ba3c4b35",
         intel: "23c1fc930bd86c820f671abb016e28ebe7bac3a8e6c81516ee0f49a2fc7ddb9f"

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
