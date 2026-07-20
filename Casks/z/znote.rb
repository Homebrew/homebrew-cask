cask "znote" do
  arch arm: "-arm64"

  version "4.3.0"
  sha256 arm:   "b8c7337b75fa365304238cc59261a399a8ccec54f5092ef13841504221b7bcd0",
         intel: "7d3e07ab865671efdc50771d9d39f5ef201d9dce3b0927409b9fd53a2775a6ae"

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
