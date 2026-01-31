cask "znote" do
  arch arm: "-arm64"

  version "3.5.8"
  sha256 arm:   "00bcd69da66920815cdbede94ebd4bde6f3a1d00f7e728efd2f293de6b957a04",
         intel: "710c1ca2f435e445c7ac2b7b5555dbcf048c48a1d44ce0d3174d2441a286dc2d"

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
