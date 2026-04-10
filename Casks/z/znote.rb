cask "znote" do
  arch arm: "-arm64"

  version "3.7.4"
  sha256 arm:   "79eca393f52a72b0eb50439437bb95ec7415b299096a24f0d3bf8619259b97ca",
         intel: "62fd663bc3387d8077fcbd89e64d2be0b49d898ada1f77e512dfc0d6e6e7a8fb"

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
