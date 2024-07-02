cask "znote" do
  arch arm: "-arm64"

  version "2.6.4"
  sha256 arm:   "14e187bfa841871f5925c8eee59ebcec62e48f4b81a20c566ddace50f6ab1dba",
         intel: "9397837d7520590ff3dbb43058acdd6e6aebd7871ac3a7b6634ca140bbbf9c40"

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
