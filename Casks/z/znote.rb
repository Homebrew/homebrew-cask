cask "znote" do
  arch arm: "-arm64"

  version "3.4.1"
  sha256 arm:   "7dfb645f3be4f2eb779f4d3d5a3188e3ca0e40bf61b3c9137ea371ce505dd590",
         intel: "d67f83eb66ae81ef801dbb74e3c35c19fb6e4412d6802bda8618d1b3704ff6ee"

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
