cask "znote" do
  arch arm: "-arm64"

  version "4.6.0"
  sha256 arm:   "3ed48a0882a25138d91994ff5b6836e84986bf7eaca3655be82b7af4b02480d3",
         intel: "aab3e80821ab0134ed08e422566cfbbfb7c7351a094041fe09dcdf3b8e443335"

  url "https://github.com/alagrede/znote-app/releases/download/v#{version}/znote-#{version}#{arch}.dmg",
      verified: "github.com/alagrede/znote-app/"
  name "Znote"
  desc "Notes-taking app"
  homepage "https://znote.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :big_sur

  app "znote.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.tony.znote.sfl*",
    "~/Library/Application Support/znote",
    "~/Library/Preferences/com.tony.znote.plist",
    "~/Library/Saved Application State/com.tony.znote.savedState",
  ]
end
