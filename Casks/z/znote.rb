cask "znote" do
  arch arm: "-arm64"

  version "2.6.12"
  sha256 arm:   "3c4c65cfb33cdb61469ac4b78ee0631b4c941ef65beb941513deb9566ded4270",
         intel: "42fab62c2de5379d7fa3bfc3145467ff91646394f223708dab95591e035e9c0a"

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
