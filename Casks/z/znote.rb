cask "znote" do
  arch arm: "-arm64"

  version "3.2.7"
  sha256 arm:   "3f217333105ddbb2b1a148eae1e87da9ce641ea41b1ae74a0cd69d5b218739b1",
         intel: "6c9d0e75d75e7243dbe4658504e829500ab3459ff2ff52679ae652645935d9ad"

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
