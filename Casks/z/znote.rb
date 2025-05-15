cask "znote" do
  arch arm: "-arm64"

  version "3.2.0"
  sha256 arm:   "c652e1a93dfb0d02a443ad5512b81bba0adab64f13151cbe1d08544745cf8774",
         intel: "b20b9f57df1ba89bd6a9725677cb7b627bd625cee36f6655e65b90bb72bd4405"

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
