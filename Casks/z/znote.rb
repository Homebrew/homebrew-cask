cask "znote" do
  arch arm: "-arm64"

  version "3.3.6"
  sha256 arm:   "5d1fce75ea766fb8afe4de558521b320e2e91e2788499a5e1f11ef1eb63a849d",
         intel: "eda4f7eaddffed3985ad02361174796a78fdb96417ea376998927cc6fb210cf2"

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
