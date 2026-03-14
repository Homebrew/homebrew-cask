cask "znote" do
  arch arm: "-arm64"

  version "3.6.8"
  sha256 arm:   "1149f2d656320d535dc8b0b4a0062235cfd7580cd6cf3ebef56082b35876129d",
         intel: "e1f36a5d7447de5d16271d0c28e5be2f1c504029a2e6cf5f7439fa44f6a48c48"

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
