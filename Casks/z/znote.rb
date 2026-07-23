cask "znote" do
  arch arm: "-arm64"

  version "4.3.2"
  sha256 arm:   "fb76f8dd0447cb1ccba4b53b61e01dd23b65f609cee61be517de4ab535f99a62",
         intel: "b314ae9d77dbdb0e47d10f5a2689af682e364a896f784cfc096353bedf54d23e"

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
