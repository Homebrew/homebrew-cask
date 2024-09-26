cask "znote" do
  arch arm: "-arm64"

  version "2.6.6"
  sha256 arm:   "2db210d766b38665d04305c419d40ddd6b853a83ef974f2825d0e0a906c3baeb",
         intel: "219da304b787e085ea771a40ed468fde9a370426d37b42d5d302f977a6fa1400"

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
