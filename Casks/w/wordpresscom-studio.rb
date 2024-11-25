cask "wordpresscom-studio" do
  arch arm: "arm64", intel: "x64"

  version "1.2.2"
  sha256 arm:   "20134c033d27a6e2d2cbbedff7d5bcea1a25e1770b8d7883b812132cee5322a9",
         intel: "0527a7ab765d21755f8a090b02b75c4f19d1ff0b8216b276cf848a079b596cad"

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
