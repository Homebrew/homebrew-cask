cask "wordpresscom-studio" do
  arch arm: "arm64", intel: "x64"

  version "1.6.2"
  sha256 arm:   "e81742e7e10672826f9608a0b4af2cf4e22995ae71f8a8fdd9ee8a1347bab009",
         intel: "f99eb8c718a831c65af1999d6b7c9ae1bb1f512b52758aba65fcfa8eb115ec53"

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
  depends_on macos: ">= :monterey"

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
