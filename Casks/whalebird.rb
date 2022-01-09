cask "whalebird" do
  version "4.5.0"
  sha256 "7acb69b13218e5e554eea4d41ca217cf6f839edbf07a8cf5e283de29d35efe31"

  url "https://github.com/h3poteto/whalebird-desktop/releases/download/#{version}/Whalebird-#{version}-darwin-universal.dmg",
      verified: "github.com/h3poteto/whalebird-desktop/"
  name "Whalebird"
  desc "Mastodon, Pleroma and Misskey client"
  homepage "https://whalebird.social/"

  app "Whalebird.app"

  zap trash: [
    "~/Library/Application Support/Whalebird",
    "~/Library/Logs/Whalebird",
    "~/Library/Preferences/org.whalebird.desktop.plist",
    "~/Library/Saved Application State/org.whalebird.desktop.savedState",
  ]
end
