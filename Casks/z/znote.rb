cask "znote" do
  arch arm: "-arm64"

  version "2.4.5"
  sha256 arm:   "aa3941a61f2090c81d7f85db7c39cba00b6a3ee51c89659ce6a712b1f18ecadc",
         intel: "3835eaa60f03289f2fd011b8f9b5a9567eb368f7b122fbcae2cf2a3388869e35"

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
