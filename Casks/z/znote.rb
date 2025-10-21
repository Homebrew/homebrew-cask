cask "znote" do
  arch arm: "-arm64"

  version "3.3.0"
  sha256 arm:   "ca3bb02c99b422961c0569b2cb93497dbdc08ceaf0ee1104752e3c137c7b5d95",
         intel: "3fc844e0ee8c3b77c183843c8cfd764e075bf6aef41cbf4fcb910123729216cf"

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
