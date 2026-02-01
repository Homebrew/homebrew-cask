cask "znote" do
  arch arm: "-arm64"

  version "3.5.9"
  sha256 arm:   "8539388bad100227cbcdbd2ee68eb3dc94901b0c8d4a3e2134b9f0215816f9ff",
         intel: "c7279916d78ce5a8b479700f083cd0ad162797b655d82678a0d78fdf32ab9481"

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
