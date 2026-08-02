cask "znote" do
  arch arm: "-arm64"

  version "4.5.3"
  sha256 arm:   "31dc3d38864197a8abe9e4a61683c0a46cc00a329a2dcfb5b825fed695f56207",
         intel: "a5e1777a4aded31aef3931a715bfc19308bf3f00c4c1659224b006b161f6df0e"

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
