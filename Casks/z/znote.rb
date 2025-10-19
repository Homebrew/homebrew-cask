cask "znote" do
  arch arm: "-arm64"

  version "3.2.8"
  sha256 arm:   "277bff03444351a0cfc2b6fcf0d340dd61b65374b0746c0b1b711f2de2b5f97e",
         intel: "5abc8bcce8e2e3c17e23da501af66af751802d0d16a472fd9e0c40c8b46b9d84"

  url "https://github.com/alagrede/znote-app/releases/download/v#{version}/znote-#{version}#{arch}.dmg",
      verified: "github.com/alagrede/znote-app/"
  name "Znote"
  desc "Notes-taking app"
  homepage "https://znote.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "znote.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.tony.znote.sfl*",
    "~/Library/Application Support/znote",
    "~/Library/Preferences/com.tony.znote.plist",
    "~/Library/Saved Application State/com.tony.znote.savedState",
  ]
end
