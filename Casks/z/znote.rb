cask "znote" do
  arch arm: "-arm64"

  version "3.7.2"
  sha256 arm:   "0ac35901ce2d0451ac8571bf8ff7e14da9df2464aea3cd1d0d1c7de74aec789d",
         intel: "678457d2975df9902db5e6a8ba1b6e80a7b2c0b1d31a8fcc8f1a0d6f912dd9bf"

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
