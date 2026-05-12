cask "znote" do
  arch arm: "-arm64"

  version "3.8.1"
  sha256 arm:   "57b02b03604298e06a94f4f350ed1685759ff625d73558a7509c409c7c25ebde",
         intel: "ae1fba37a04352bbe6e2db9617108d9d365e1c4c32335fe42ddcaa289ab97a50"

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
