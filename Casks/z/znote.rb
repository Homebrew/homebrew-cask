cask "znote" do
  arch arm: "-arm64"

  version "4.1.1"
  sha256 arm:   "0812c7f3c61b14ca4c64ec63a515d5cc3de85d062f5a599e6a1f1602992e825c",
         intel: "2ea24e484d1eb72b039502fa988d4c363eff4ed485f506457997018d0dfeb6e0"

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
