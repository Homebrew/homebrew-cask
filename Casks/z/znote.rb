cask "znote" do
  arch arm: "-arm64"

  version "3.8.6"
  sha256 arm:   "fe3e79b07b0f51002c81cfe5666beba9c010a460a3cea5a7781ee707263c9d6a",
         intel: "098906acbbb3d37ae391f2f1250c8b35cc6629bbddbf40cb9018481a6d6fcec1"

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
