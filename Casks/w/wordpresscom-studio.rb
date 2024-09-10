cask "wordpresscom-studio" do
  arch arm: "arm64", intel: "x64"

  version "1.1.1"
  sha256 arm:   "9e2f48d51afb9a4e23820cfe898eb0f99317ddc9e1e55da55e728048b7a32c48",
         intel: "81088605afaa5ae4f86bc5950ab6bd4480509dc84e86f9807e90c4af64ea8b7b"

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
