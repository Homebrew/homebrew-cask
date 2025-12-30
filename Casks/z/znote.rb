cask "znote" do
  arch arm: "-arm64"

  version "3.5.1"
  sha256 arm:   "d48f46c7315a31024eb142cb67f1c7c3921539a16de4cc3063225d088db3f570",
         intel: "db0885b8ed0f87b8edfb8d3d7ad1aa872f25d27805f42b458c27618670f9e45a"

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
