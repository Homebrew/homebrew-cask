cask "znote" do
  arch arm: "-arm64"

  version "3.5.0"
  sha256 arm:   "751c75175a704fd475487cbaf4cd47929b20607c54c193fd4f23e39d34c1e5ea",
         intel: "66a2ae32df47ade84eed74372cc5674901a39d1160e7e2368fcf287ff92e2a69"

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
