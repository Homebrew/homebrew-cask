cask "znote" do
  arch arm: "-arm64"

  version "3.2.4"
  sha256 arm:   "8302c74882d44726c3634300b27bb6feabaebe8b1661f7f7190ac93f0245516f",
         intel: "4333af95d4040b70f603cf4014fc1465ea838ad7b2cbc54c47bd6b8a58f4e582"

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
