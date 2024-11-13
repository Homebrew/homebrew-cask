cask "znote" do
  arch arm: "-arm64"

  version "2.6.10"
  sha256 arm:   "67c6d9e976ed11ecaf984a05d4ef2e59e07089fca41ef66450f5c0fc2e77737d",
         intel: "9b0d9c6cd6543b47c5398bd4e4b602492ee61df07528bf05779a7c062214e373"

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
