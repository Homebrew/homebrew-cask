cask "znote" do
  arch arm: "-arm64"

  version "3.7.6"
  sha256 arm:   "b751f90188e784972ca3a0d3dd0d29482687796cbc6bc3440b877ac28e3e0b55",
         intel: "de603f87420bbfc8a9b2b8c9b74a8902994cf75c57a658d53776f99695baaf46"

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
