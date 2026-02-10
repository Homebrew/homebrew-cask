cask "znote" do
  arch arm: "-arm64"

  version "3.6.0"
  sha256 arm:   "f31d9b77774c7ee03046e27f83b0a3dd7b416d1065dc158b4ae827fe7ef1af34",
         intel: "9d994df0adf4e2443cbe4d5546f73614ad06c151b38dfaca057c0336761a956f"

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
