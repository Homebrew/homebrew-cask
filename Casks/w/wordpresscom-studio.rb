cask "wordpresscom-studio" do
  arch arm: "arm64", intel: "x64"

  version "1.0.2"
  sha256 arm:   "2b5f1f33fb054f5b92d650074ae96f143a0f18911f8731014f1637bfd44ad3ec",
         intel: "c45162b6f814fc73ed5dbc6804fada4fb6cef15b73628481898e6c6b82d4d404"

  url "https://cdn.a8c-ci.services/studio/studio-darwin-#{arch}-v#{version}.app.zip",
      verified: "cdn.a8c-ci.services/studio/"
  name "Wordpress Studio"
  desc "WordPress local development environment"
  homepage "https://developer.wordpress.com/studio/"

  livecheck do
    url :homepage
    regex(/studio[._-]darwin[._-]#{arch}[._-]v?(\d+(?:\.\d+)+)\.app\.zip/i)
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
