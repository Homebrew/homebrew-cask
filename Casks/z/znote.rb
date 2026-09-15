cask "znote" do
  arch arm: "-arm64"

  version "4.9.3"
  sha256 arm:   "8350661896479e58303f3296ad2681cf7339074b82b606ef984ab9c49bda4122",
         intel: "e7a099b4c393653b6d98bb4aa07a6ef366ea9fb50713220949380c28b3ae1026"

  url "https://github.com/alagrede/znote-app/releases/download/v#{version}/znote-#{version}#{arch}.dmg"
  name "Znote"
  desc "Notes-taking app"
  homepage "https://znote.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "znote.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.tony.znote.sfl*",
    "~/Library/Application Support/znote",
    "~/Library/Preferences/com.tony.znote.plist",
    "~/Library/Saved Application State/com.tony.znote.savedState",
  ]
end
