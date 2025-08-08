cask "znote" do
  arch arm: "-arm64"

  version "3.2.6"
  sha256 arm:   "00d0a1a54f9242eaa55f16a3f069d72fe2691370ab04270d1a8e9db4ad9c5001",
         intel: "4b9d252c8c0c34cedbcd0dbfc99731af26bd4f2d2dd5c77a7a7dcd460cf9e1e9"

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
