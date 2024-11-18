cask "znote" do
  arch arm: "-arm64"

  version "2.6.11"
  sha256 arm:   "fa484e88e4973993b3eb69d6be5f295ac1e95868dd0f231eeafb9df8904988da",
         intel: "0250b104af0b70e6e15a0633a1473d3f2e570556ff9114b4f72fd348275efa5b"

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
