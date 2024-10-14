cask "wordpresscom-studio" do
  arch arm: "arm64", intel: "x64"

  version "1.1.4"
  sha256 arm:   "07e48c7b1f780d2e475c8094e2cba93e4f134e85c831ba33d35f62de03b02298",
         intel: "827882f3a4c45f3298e230168e86a2fad9299c9b711b5078225a1a788432d159"

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
