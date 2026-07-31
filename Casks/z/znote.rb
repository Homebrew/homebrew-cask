cask "znote" do
  arch arm: "-arm64"

  version "4.5.2"
  sha256 arm:   "7d9ab8f6c1355ff136305b266274fe7a393dbc09c76fcfb115121497ccd2b10d",
         intel: "9d55b98759e2b49eb65c427b61a917eb845c772cf92f82135fefc939f7a535dc"

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
