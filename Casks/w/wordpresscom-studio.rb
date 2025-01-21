cask "wordpresscom-studio" do
  arch arm: "arm64", intel: "x64"

  version "1.3.2"
  sha256 arm:   "9bf306a77c9e6b2d1bce91fb96630e1c5f9c09389cdf20da5bc42a3419e7ffb1",
         intel: "6058991842ee123109b466a7d403d69a38115833958513e3ec34681067ad563f"

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
