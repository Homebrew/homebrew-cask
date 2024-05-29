cask "znote" do
  arch arm: "-arm64"

  version "2.6.1"
  sha256 arm:   "65ae753e74ee71bccf54f502034ddb8f0f2cfe34a2e5622503320899d37f024e",
         intel: "b489f9ed2e056548391d2d1cea5f32f136ddd94847567a17d01ec91ec8f66b01"

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
