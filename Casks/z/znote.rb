cask "znote" do
  arch arm: "-arm64"

  version "4.9.2"
  sha256 arm:   "bd6cbf711c5492546286e4beab8309b6e607d913ca0d2a3d256329ebd03b201f",
         intel: "367c5cfa1f5bb19ad0a3d27bde3daa2660163dc8a8f723b6a815e3c9479e69e1"

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
