cask "znote" do
  arch arm: "-arm64"

  version "3.5.10"
  sha256 arm:   "3193b350e4ba31f7b7a3be40a2d11d79d019f4be7ccb1865de5e5d5058b31c23",
         intel: "dd3e208f1422d35aa83749e5a9e721754c6953b7c9d0df3f4a4a239ffbd23e42"

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
