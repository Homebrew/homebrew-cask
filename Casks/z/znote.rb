cask "znote" do
  arch arm: "-arm64"

  version "4.2.2"
  sha256 arm:   "d8dc2079021aad70ded620dac134fa02bcd5d2728cd9ff4a60dfe82d92495521",
         intel: "4c6ce81d8f7f1871ca8a732f03b1fc24c0bffee3b3d4f5f2c699ef945294c39b"

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
