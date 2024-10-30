cask "znote" do
  arch arm: "-arm64"

  version "2.6.8"
  sha256 arm:   "7d564b44cd63d574d723739863da30250c41f048240a046734a19063cdde9ac3",
         intel: "d627490f881d0831278f2034a5b9b738990a0587b3cc005e7d02aebdd4b2ee6a"

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
