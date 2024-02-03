cask "znote" do
  arch arm: "-arm64"

  version "2.4.2"
  sha256 arm:   "f16c7f4ec28438758e4e24aebd2be3ed3195a4737fda36c36b6fc01f6155279b",
         intel: "5650a678d546b328ab22044b6b8222bd5cb6768e7e3580e92069b698a4930194"

  url "https://github.com/alagrede/znote-app/releases/download/v#{version}/znote-#{version}#{arch}.dmg",
      verified: "github.com/alagrede/znote-app/"
  name "Znote"
  desc "Notes-taking app"
  homepage "https://znote.io/"

  depends_on macos: ">= :el_capitan"

  app "znote.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.tony.znote.sfl3",
    "~/Library/Application Support/znote",
    "~/Library/Preferences/com.tony.znote.plist",
    "~/Library/Saved Application State/com.tony.znote.savedState",
  ]
end
