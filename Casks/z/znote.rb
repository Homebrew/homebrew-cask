cask "znote" do
  arch arm: "-arm64"

  version "3.8.4"
  sha256 arm:   "134081b6b82676e70a19a82eb99a2d41f191fa18a44f6cfd89ad43dcfc38402d",
         intel: "0a367dc156d43afb9b00d61275ce5af8de58aeaeb48dd30ea2b175ad723cff4d"

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
