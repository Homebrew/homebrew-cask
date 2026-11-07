cask "znote" do
  arch arm: "-arm64"

  version "4.10.0"
  sha256 arm:   "3a1f99c9ac547d03efab7dbebad255c73eb133aa6c1e0c6fc85f6b1f4ead1539",
         intel: "52856ec99f6e4f09226911d5b802aa65ca6eef08ea6f9ea044b91e6abfb8f22f"

  url "https://github.com/alagrede/znote-app/releases/download/v#{version}/znote-#{version}#{arch}.dmg"
  name "Znote"
  desc "Notes-taking app"
  homepage "https://znote.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "znote.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.tony.znote.sfl*",
    "~/Library/Application Support/znote",
    "~/Library/Preferences/com.tony.znote.plist",
    "~/Library/Saved Application State/com.tony.znote.savedState",
  ]
end
