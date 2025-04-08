cask "znote" do
  arch arm: "-arm64"

  version "3.1.0"
  sha256 arm:   "3fa8abfb20d53cadf84400df4ce231978ced0879bdd7c2fa60d208b6a9697bd6",
         intel: "bb915ffc4edbf86f731f7d49c167fa7cb5fda3a385565411ec04c2fd9c48cf0f"

  url "https://github.com/alagrede/znote-app/releases/download/v#{version}/znote-#{version}#{arch}.dmg",
      verified: "github.com/alagrede/znote-app/"
  name "Znote"
  desc "Notes-taking app"
  homepage "https://znote.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :catalina"

  app "znote.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.tony.znote.sfl*",
    "~/Library/Application Support/znote",
    "~/Library/Preferences/com.tony.znote.plist",
    "~/Library/Saved Application State/com.tony.znote.savedState",
  ]
end
