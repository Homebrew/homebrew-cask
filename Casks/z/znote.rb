cask "znote" do
  arch arm: "-arm64"

  version "2.4.3"
  sha256 arm:   "d331bd768421500b705af94a182726b041ed9c9ba517d60d47b9dec4b9582d85",
         intel: "9bc5067b5aaeef93884a7355702c5b4a51da43c5da76331352512eda382543c7"

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
