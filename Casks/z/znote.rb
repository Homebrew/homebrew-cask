cask "znote" do
  arch arm: "-arm64"

  version "3.1.4"
  sha256 arm:   "751cd387ceb78ba44bbe18c579ce2b1ac9dee29d87662ade95791234c488a467",
         intel: "2d9deae74af1c2f8009d4faaa807e8e7552cc54b6f1595aef11b6be0876349c1"

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
