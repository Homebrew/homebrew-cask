cask "znote" do
  arch arm: "-arm64"

  version "3.2.5"
  sha256 arm:   "5df1bb9f479f3e44692b1fd4ea395cf978f6c7bee06a4839810fdf5c4bb1a3a6",
         intel: "35e1c9efd19b529317e47d277f57c3f54cee1e68d6f12d6d8e4a6169a5564b00"

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
