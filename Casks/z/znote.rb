cask "znote" do
  arch arm: "-arm64"

  version "2.4.9"
  sha256 arm:   "c1eab74debdcb47453f49567c57f8f24e7f4c27484e854b4e4ebd4f2528795a0",
         intel: "dc5a80607f8af4295648a3e22635d160208ee29c647aebcc41ccd34b8f6e289f"

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
