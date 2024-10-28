cask "wordpresscom-studio" do
  arch arm: "arm64", intel: "x64"

  version "1.2.0"
  sha256 arm:   "5fc9cc9113de4627c4d682b82a9498985d0596d1451857cc266ab1b3fe1c9dab",
         intel: "5979fc360d2da8facb37af2f0686ca45f80d95a7a5cd75b5bb450d031314b5ac"

  url "https://cdn.a8c-ci.services/studio/studio-darwin-#{arch}-v#{version}.dmg",
      verified: "cdn.a8c-ci.services/studio/"
  name "Wordpress Studio"
  desc "WordPress local development environment"
  homepage "https://developer.wordpress.com/studio/"

  livecheck do
    url :homepage
    regex(/studio[._-]darwin[._-]#{arch}[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Studio.app"

  uninstall quit: "com.electron.studio"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.electron.studio.sfl*",
    "~/Library/Application Support/Studio",
    "~/Library/Caches/com.electron.studio*",
    "~/Library/HTTPStorages/com.electron.studio",
    "~/Library/Logs/Studio",
    "~/Library/Preferences/com.electron.studio.plist",
    "~/Library/Saved Application State/com.electron.studio.savedState",
  ]
end
