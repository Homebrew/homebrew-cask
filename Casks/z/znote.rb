cask "znote" do
  arch arm: "-arm64"

  version "3.2.9"
  sha256 arm:   "23e0de647f66e92b4c969cd67a6f0270238caf1a9aa7e86934e8234114977f1f",
         intel: "b954de6a058629bc109a8cf55518d34e2d8eae08c776685ea4b62a0f8c6010c6"

  url "https://github.com/alagrede/znote-app/releases/download/v#{version}/znote-#{version}#{arch}.dmg",
      verified: "github.com/alagrede/znote-app/"
  name "Znote"
  desc "Notes-taking app"
  homepage "https://znote.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "znote.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.tony.znote.sfl*",
    "~/Library/Application Support/znote",
    "~/Library/Preferences/com.tony.znote.plist",
    "~/Library/Saved Application State/com.tony.znote.savedState",
  ]
end
