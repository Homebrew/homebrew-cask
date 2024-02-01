cask "znote" do
  arch arm: "-arm64"

  version "2.4.1"
  sha256 arm:   "67a4517374bc6834c64625807c6094abe3aa73f1c39ae8c036617e070ad69813",
         intel: "130221d2dcddc7dfe007baa875454193b8443bf3a7c1a6d796b38e3295a055cd"

  url "https://github.com/alagrede/znote-app/releases/download/v#{version}/znote-#{version}#{arch}.dmg",
      verified: "github.com/alagrede/znote-app/"
  name "Znote"
  desc "Notes-taking app"
  homepage "https://znote.io/"

  depends_on macos: ">= :el_capitan"

  app "znote.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.tony.znote.sfl3",
    "~/Library/Application Support/znote",
    "~/Library/Preferences/com.tony.znote.plist",
    "~/Library/Saved Application State/com.tony.znote.savedState",
  ]
end
