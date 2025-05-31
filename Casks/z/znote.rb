cask "znote" do
  arch arm: "-arm64"

  version "3.2.2"
  sha256 arm:   "86d44a8fc14b6c36ee0c05b57281d311960decdc82574146d4de32afb9f98c1b",
         intel: "8019aaa525829ea0a4512ef38aee75b9bfe38bd1b2b784249a64f8c2dcb0e406"

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
