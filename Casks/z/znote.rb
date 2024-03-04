cask "znote" do
  arch arm: "-arm64"

  version "2.5.2"
  sha256 arm:   "5acdb8720e5b81d5ee30516390f62e6f4a873dfdcf95b3c1669dfa195f9855db",
         intel: "544bcae6bfd6dfcf8776d6585c35ec6ea8fff1ef35d80546fcbf9734c9670210"

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
