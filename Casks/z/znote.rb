cask "znote" do
  arch arm: "-arm64"

  version "3.7.0"
  sha256 arm:   "84a0fed3a98c2e2fce9a5da2f2f1473c9063a226f8d17d637514ee5e1d982026",
         intel: "ec8082f403962fa166decb7282d194d1db03a23bbf1207f2057e396eea0fc327"

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
