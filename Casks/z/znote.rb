cask "znote" do
  arch arm: "-arm64"

  version "2.5.6"
  sha256 arm:   "26716cc7da3e87a3ca20e32a9e37a896b1a5873156313d38445f786a72967997",
         intel: "e025a839cfa5b0097a49a13133845dfd9b6804a8a2c0c0f6703a78d18a9b3d94"

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
