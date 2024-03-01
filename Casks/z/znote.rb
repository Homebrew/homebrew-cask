cask "znote" do
  arch arm: "-arm64"

  version "2.5.1"
  sha256 arm:   "da9548616ba2b325f65cf166c2bfd4cac58e502ad5271ba3bfee8f518f56f0e8",
         intel: "046b1171452971ffa23cc48cfaef756847fe39f464cddd05e5792148dce819c7"

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
