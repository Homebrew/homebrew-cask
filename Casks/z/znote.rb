cask "znote" do
  arch arm: "-arm64"

  version "2.6.3"
  sha256 arm:   "c3a1331562500dfb62251dfa1e95f6d3f7d96b2a078414b166336c844f4ffb93",
         intel: "5bb41cac582a5e4b17198d731c51ddc85ee197ca3e856754787436b75546d0c6"

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
