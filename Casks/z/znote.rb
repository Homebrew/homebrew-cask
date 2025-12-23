cask "znote" do
  arch arm: "-arm64"

  version "3.4.0"
  sha256 arm:   "2932d40fdf9cf119004e1f9a1344d69ca3f362d2e6b0fecd4ff34fecb1141a8e",
         intel: "3c30f2be74294e77a1e375f13507094f6dc906ad77b0c11fe6efbefb28649596"

  url "https://github.com/alagrede/znote-app/releases/download/v#{version}/znote-#{version}#{arch}.dmg",
      verified: "github.com/alagrede/znote-app/"
  name "Znote"
  desc "Notes-taking app"
  homepage "https://znote.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "znote.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.tony.znote.sfl*",
    "~/Library/Application Support/znote",
    "~/Library/Preferences/com.tony.znote.plist",
    "~/Library/Saved Application State/com.tony.znote.savedState",
  ]
end
