cask "znote" do
  arch arm: "-arm64"

  version "3.0.2"
  sha256 arm:   "91adf76519553459228c090daa85eac2775d9cde47e5e98831b9374f65223c0b",
         intel: "27a7bdb1f19c8a3e2db02812ab8506f82eb6ad7eae6b6d7bde14edce3f14623e"

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
