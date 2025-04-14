cask "znote" do
  arch arm: "-arm64"

  version "3.1.6"
  sha256 arm:   "ccc3b26ce1bcca436878e9b42d26add67f9561b8bfebebabd6f1165a8dde587d",
         intel: "cce4027b0fe492b13ce760ed34819f96c018e21b0e5ab275d90fa8f1b646688f"

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
