cask "znote" do
  arch arm: "-arm64"

  version "3.0.5"
  sha256 arm:   "56187521ca5939fefbf759cdeb90d35c9bcbb51bf229fb8761b98fd88578b8d8",
         intel: "7ee20fb24be2f582747e19ae3caec7427f6fea09e1ef0586f547338578214d7b"

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
