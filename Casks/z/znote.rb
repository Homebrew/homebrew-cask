cask "znote" do
  arch arm: "-arm64"

  version "3.3.3"
  sha256 arm:   "f7c24fc66d5364592b4da7e78d13a521b4b634c5661762804698b1547bbd20ca",
         intel: "5d20d7cc9bfc7b4344498a791d18ffd53dec132fbce317a0afbe125c6483fef8"

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
