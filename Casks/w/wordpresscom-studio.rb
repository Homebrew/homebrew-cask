cask "wordpresscom-studio" do
  arch arm: "arm64", intel: "x64"

  version "1.3.0"
  sha256 arm:   "16f42e358a774f815110c3ee17041c0d3cb5e0e6a80397078a3783ab342d4f0f",
         intel: "f7a0566aa295d5e62518ec45585c6fae3697ae6781217c6988193f5f729ffdc5"

  url "https://cdn.a8c-ci.services/studio/studio-darwin-#{arch}-v#{version}.app.zip",
      verified: "cdn.a8c-ci.services/studio/"
  name "Wordpress Studio"
  desc "WordPress local development environment"
  homepage "https://developer.wordpress.com/studio/"

  livecheck do
    url "https://public-api.wordpress.com/wpcom/v2/studio-app/updates?platform=darwin&arch=#{arch}&version=0.0.0"
    regex(/studio[._-]darwin[._-]#{arch}[._-]v?(\d+(?:\.\d+)+)\.app\.zip/i)
    strategy :json do |json, regex|
      match = json["url"]&.match(regex)
      next if match.blank?

      match[1]
    end
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
