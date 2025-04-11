cask "znote" do
  arch arm: "-arm64"

  version "3.1.1"
  sha256 arm:   "f84ed0e34a575f386980d8f9b431a06614ddcce856f3f0505848f7ee44fed147",
         intel: "e8d9a6d3cdc8a88cadbfd9af67ea3a097727fb2f59d4ed224c8b138c4f6772c4"

  url "https://github.com/alagrede/znote-app/releases/download/v#{version}/znote-#{version}#{arch}.dmg",
      verified: "github.com/alagrede/znote-app/"
  name "Znote"
  desc "Notes-taking app"
  homepage "https://znote.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :catalina"

  app "znote.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.tony.znote.sfl*",
    "~/Library/Application Support/znote",
    "~/Library/Preferences/com.tony.znote.plist",
    "~/Library/Saved Application State/com.tony.znote.savedState",
  ]
end
