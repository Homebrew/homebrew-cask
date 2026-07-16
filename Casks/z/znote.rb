cask "znote" do
  arch arm: "-arm64"

  version "4.2.3"
  sha256 arm:   "25839c4b51b9d0466d36a6b666e65d6609313f96db714178e0abb467004f14f9",
         intel: "0443e0aa38cf382b1a9637a285c076afa2a0d8d2c185ea1a01ab68563ba15132"

  url "https://github.com/alagrede/znote-app/releases/download/v#{version}/znote-#{version}#{arch}.dmg",
      verified: "github.com/alagrede/znote-app/"
  name "Znote"
  desc "Notes-taking app"
  homepage "https://znote.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :big_sur

  app "znote.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.tony.znote.sfl*",
    "~/Library/Application Support/znote",
    "~/Library/Preferences/com.tony.znote.plist",
    "~/Library/Saved Application State/com.tony.znote.savedState",
  ]
end
