cask "wordpresscom-studio" do
  arch arm: "arm64", intel: "x64"

  version "1.1.0"
  sha256 arm:   "eea0b4ba4a92f98317a802f87dd5df9246e023011abe746fe95e0e192e52bfd0",
         intel: "4fadf0e355a1f32e60c80621a0e734805a183ce66e57d617c4440c7d59551965"

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
