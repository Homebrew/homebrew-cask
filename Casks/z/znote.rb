cask "znote" do
  arch arm: "-arm64"

  version "2.7.10"
  sha256 arm:   "9aa6c1ae3c98d7e4e0d8bbe23107b87d4044daf1a318cb42e1872ce3895cecf1",
         intel: "fc146ee1e48a69d42d6ab8fc11710d4a0ee66a8f9f9cc74137ef4c84fc622c3b"

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
